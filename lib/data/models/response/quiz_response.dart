import 'package:flutter/material.dart';
import '../../../domain/entities/quiz_entity.dart';

@immutable
class QuestionResponseModel extends Question {
  final List<dynamic> incorrectAnswers;

  const QuestionResponseModel({
    required correctAnswer,
    required question,
    required this.incorrectAnswers,
  }) : super(
          correctAnswer: correctAnswer,
          question: question,
        );

  factory QuestionResponseModel.fromJson(Map<String, dynamic> map) {
    return QuestionResponseModel(
      question: map['question'] ?? '',
      correctAnswer: map['correct_answer'] ?? '',
      incorrectAnswers: map['incorrect_answers'] ?? [],
    );
  }

  Question toEntity() {
    return Question(
        question: question,
        correctAnswer: correctAnswer,
        answers: incorrectAnswers
          ..add(correctAnswer)
          ..shuffle());
  }

  @override
  List<Object?> get props => [
        question,
        correctAnswer,
        incorrectAnswers,
      ];
}
