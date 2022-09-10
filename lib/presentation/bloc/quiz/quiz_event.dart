part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  const factory QuizEvent.categoryChanged(String categoryStr) = CategoryChanged;
  const factory QuizEvent.amountChanged(String amountStr) = AmountChanged;
  const factory QuizEvent.typeChanged(String typeStr) = TypeChanged;
  const factory QuizEvent.getQuizPressed() = GetQuizPressed;
  const factory QuizEvent.newQuizPressed() = NewQuizPressed;
}
