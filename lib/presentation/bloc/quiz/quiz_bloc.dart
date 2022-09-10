import 'package:bloc/bloc.dart';
import 'package:quiz/core/util/input_converter.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/presentation/common/input_type_category.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuestions getQuestions;
  final InputConverter inputConverter;
  late int category;
  late int amount;
  late String type;

  QuizBloc({
    required this.getQuestions,
    required this.inputConverter,
  }) : super(QuizState.initial()) {
    on<QuizEvent>((event, emit) async {
      await event.map(
        categoryChanged: (e) {
          emit(state.copyWith(
            category: e.categoryStr,
          ));
        },
        amountChanged: (e) {
          emit(state.copyWith(
            amount: e.amountStr,
          ));
        },
        typeChanged: (e) {
          emit(state.copyWith(
            type: e.typeStr,
          ));
        },
        getQuizPressed: (e) async {
          final categoryParsed =
              inputConverter.stringToUnsignedInteger(state.category);
          emit(
            categoryParsed.fold(
              (_) {
                category = 0;
                return state.copyWith(
                  isError: true,
                );
              },
              (catInt) {
                category = catInt;
                final amountParsed =
                    inputConverter.stringToUnsignedInteger(state.amount);
                return amountParsed.fold(
                  (failure) {
                    amount = 0;
                    return state.copyWith(
                      isError: true,
                    );
                  },
                  (amountInt) {
                    amount = amountInt;
                    final typeCheck = inputConverter.checkString(state.type);
                    return typeCheck.fold((failure) {
                      type = '';
                      return state.copyWith(
                        isError: true,
                      );
                    }, (typeStr) {
                      type = typeStr;
                      return state.copyWith(
                        isLoading: true,
                        isError: false,
                      );
                    });
                  },
                );
              },
            ),
          );
          if (category != 0 && amount != 0 && type != '') {
            final request = QuestionRequest(
              amount: amount,
              category: category,
              type: type,
            );

            final failureOrQuestions =
                await getQuestions.execute(request: request);
            emit(failureOrQuestions.fold(
              (failure) => state.copyWith(
                isError: true,
                isLoading: false,
              ),
              (result) => state.copyWith(
                results: result,
                isLoading: false,
                isLoaded: true,
                isError: false,
              ),
            ));
          } else {
            emit(state.copyWith(
              isError: true,
              isLoading: false,
            ));
          }
        },
        newQuizPressed: (_) {
          emit(QuizState.initial());
        },
      );
    });
  }
}
