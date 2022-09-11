part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitting,
    required bool showError,
    required String category,
    required String type,
    required String amount,
    required List<Question> results,
  }) = _QuizState;

  factory QuizState.initial() {
    return const QuizState(
      isLoading: false,
      isLoaded: false,
      isSubmitting: false,
      showError: false,
      category: '',
      type: '',
      amount: '',
      results: [],
    );
  }
}
