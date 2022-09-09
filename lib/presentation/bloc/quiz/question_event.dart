part of 'question_bloc.dart';

@freezed
abstract class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.submitAnswer({
    required String submittedAnswer,
    required String correctAnswer,
    required int numberQuestions,
    required int currentQuestion,
  }) = SubmitAnswer;
  const factory QuestionEvent.nextQuestion() = NextQuestion;
  const factory QuestionEvent.showResults() = ShowResults;
}
