part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required bool isLoading,
    required bool isLoaded,
    required bool isError,
    required String category,
    required String type,
    required String amount,
    required List<Question> results,
  }) = _QuizState;

  factory QuizState.initial() {
    return const QuizState(
      isLoading: false,
      isLoaded: false,
      isError: false,
      category: '',
      type: '',
      amount: '',
      results: [],
    );
  }
}
