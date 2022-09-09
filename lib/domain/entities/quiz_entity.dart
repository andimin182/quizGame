import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable

/// Question class to model the api response: it will be
/// used in the Presentation layer
class Question extends Equatable {
  final String question;
  final String correctAnswer;
  final List<dynamic>? answers;

  const Question({
    required this.question,
    required this.correctAnswer,
    this.answers,
  });

  @override
  List<Object?> get props => [
        question,
        correctAnswer,
        answers?.toSet(),
      ];
}
