import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/data/models/response/quiz_response.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final jsonData = fixture("response_multiple.json");
  final data = json.decode(jsonData);
  final results = List<Map<String, dynamic>>.from(data["results"]);
  final questions =
      results.map((e) => QuestionResponseModel.fromJson(e)).toList();

  test(
    'should be of type Question',
    () async {
      //arrange
      //act
      QuestionResponseModel questionResponseModel = questions[1];
      //assert
      expect(questionResponseModel, isA<QuestionResponseModel>());
    },
  );

  test(
    'should read a List<QuestionResponseModel> from the results',
    () async {
      //arrange
      //act
      //assert
      expect(questions, isA<List<QuestionResponseModel>>());
    },
  );

  test(
    'should return a question type when toEntity is called ',
    () async {
      //arrange
      //act
      final entity = questions[1].toEntity();
      //assert
      expect(entity, isA<Question>());
    },
  );

  test(
    'should return the good Entity ',
    () async {
      //arrange
      //act
      final entity = questions[1].toEntity();
      const expected = Question(
        correctAnswer: "Numbers",
        answers: ["Genesis", "Exodus", "Leviticus", "Numbers"],
        question: "What is the fourth book of the Old Testament?",
      );
      //assert
      expect(entity, equals(expected));
    },
  );
}
