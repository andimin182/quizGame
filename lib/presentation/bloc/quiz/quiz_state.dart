part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitting,
    required bool showError,
    required Category category,
    required Type type,
    required Amount amount,
    required List<Question> results,
  }) = _QuizState;

  factory QuizState.initial() {
    return QuizState(
      isLoading: false,
      isLoaded: false,
      isSubmitting: false,
      showError: false,
      category: Category(''),
      type: Type(''),
      amount: Amount(''),
      results: [],
    );
  }
}
