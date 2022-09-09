part of 'question_bloc.dart';

enum QuizStatus { initial, answered, correct, incorrect, completed }

@freezed
abstract class QuestionState with _$QuestionState {
  QuestionState._();
  factory QuestionState({
    required int numberCorrectAnswers,
    required bool showButtonResults,
    required QuizStatus status,
  }) = _QuestionState;

  factory QuestionState.initial() => QuestionState(
        numberCorrectAnswers: 0,
        showButtonResults: false,
        status: QuizStatus.initial,
      );

  int get cacheCorrectAnswers => numberCorrectAnswers;

  bool get answered =>
      status == QuizStatus.correct || status == QuizStatus.incorrect;
}
