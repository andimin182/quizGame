part of 'quiz_bloc.dart';

abstract class QuizState extends Equatable {
  const QuizState();

  @override
  List<Object> get props => [];
}

class QuizEmptyState extends QuizState {}

class QuizLoadingState extends QuizState {}

class QuizLoadedState extends QuizState {
  final List<Question> questions;

  const QuizLoadedState({required this.questions});
  @override
  List<Object> get props => [questions];
}

class QuizErrorState extends QuizState {
  final String message;

  const QuizErrorState(this.message);

  @override
  List<Object> get props => [message];
}
