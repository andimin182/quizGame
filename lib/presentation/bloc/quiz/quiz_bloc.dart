import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz/core/util/input_converter.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart';
part 'quiz_event.dart';
part 'quiz_state.dart';

// ignore: constant_identifier_names
const String INVALID_INPUT_MESSAGE_FAILURE = 'Input is not valid';
// ignore: constant_identifier_names
const String SERVER_MESSAGE_FAILURE = 'Server error: something went wrong';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final GetQuestions getQuestions;
  final InputConverter inputConverter;
  late int category;
  late int amount;
  late String type;

  QuizBloc({
    required this.getQuestions,
    required this.inputConverter,
  }) : super(QuizEmptyState()) {
    on<GetQuizEvent>(
      (event, emit) async {
        final categoryParsed =
            inputConverter.stringToUnsignedInteger(event.category);
        emit(
          categoryParsed.fold(
            (failure) {
              category = 0;
              return const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE);
            },
            (catInt) {
              category = catInt;
              final amountParsed =
                  inputConverter.stringToUnsignedInteger(event.amount);
              return amountParsed.fold(
                (failure) {
                  amount = 0;
                  return const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE);
                },
                (amountInt) {
                  amount = amountInt;
                  final typeCheck = inputConverter.checkString(event.type);
                  return typeCheck.fold((failure) {
                    type = '';
                    return const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE);
                  }, (typeStr) {
                    type = typeStr;
                    return QuizLoadingState();
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
            (failure) => const QuizErrorState(SERVER_MESSAGE_FAILURE),
            (result) => QuizLoadedState(questions: result),
          ));
        } else {
          emit(const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE));
        }
      },
    );
  }
}
