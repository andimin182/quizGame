import 'package:bloc/bloc.dart';
import 'package:quiz/core/util/input_converter.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/quiz/quiz_value_objects_impl.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuestions getQuestions;
  final InputConverter inputConverter;

  QuizBloc({
    required this.getQuestions,
    required this.inputConverter,
  }) : super(QuizState.initial()) {
    on<QuizEvent>((event, emit) async {
      await event.map(
        categoryChanged: (e) {
          emit(state.copyWith(
            category: Category(e.categoryStr),
          ));
        },
        amountChanged: (e) {
          emit(state.copyWith(
            amount: Amount(e.amountStr),
          ));
        },
        typeChanged: (e) {
          emit(state.copyWith(
            type: Type(e.typeStr),
          ));
        },
        getQuizPressed: (e) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              isLoading: true,
            ),
          );
          if (state.category.isValid() &&
              state.amount.isValid() &&
              state.type.isValid()) {
            final request = QuestionRequest(
              amount: int.parse(state.amount.getOrCrash()),
              category: state.category.getOrCrash(),
              type: state.type.getOrCrash(),
            );

            final failureOrQuestions =
                await getQuestions.execute(request: request);
            emit(failureOrQuestions.fold((failure) {
              return state.copyWith(
                isSubmitting: false,
                isLoading: false,
                showError: true,
              );
            }, (result) {
              return state.copyWith(
                results: result,
                isLoading: false,
                showError: false,
                isLoaded: true,
                isSubmitting: false,
              );
            }));
          } else {
            emit(state.copyWith(
              isLoading: false,
              showError: true,
              isLoaded: false,
              isSubmitting: true,
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
