part of 'quiz_bloc.dart';

@immutable
abstract class QuizEvent extends Equatable {
  const QuizEvent();
}

class GetQuizEvent implements QuizEvent {
  // The final String prop are equivalent to the Quiz request properties;
  // Note that all are strings because they are taken from TextField
  final String category;
  final String amount;
  final String type;

  GetQuizEvent({
    required this.category,
    required this.amount,
    required this.type,
  });
  @override
  List<Object> get props => [
        category,
        amount,
        type,
      ];

  @override
  bool? get stringify => true;
}
