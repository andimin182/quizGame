import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:quiz/core/error.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/data/models/response/quiz_response.dart';
import 'package:quiz/domain/repositories/quiz_repository_contract.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart';

class MockQuizRepository extends Mock implements QuizRepository {
  @override
  Future<Either<Failure, List<QuestionResponseModel>>> getQuestions({
    required QuestionRequest request,
  }) async {
    return await Future.value(
      const Right([
        QuestionResponseModel(
            correctAnswer: 'Test',
            incorrectAnswers: ['none', 'none'],
            question: 'Test?'),
        QuestionResponseModel(
            correctAnswer: 'Test',
            incorrectAnswers: ['none', 'none'],
            question: 'Test?'),
      ]),
    );
  }
}

void main() {
  late GetQuestions usecase;
  late MockQuizRepository mockQuizRepository;

  setUp(() {
    mockQuizRepository = MockQuizRepository();
    usecase = GetQuestions(repository: mockQuizRepository);
  });
  const questions = [
    QuestionResponseModel(
      correctAnswer: 'Test',
      incorrectAnswers: ['none', 'none'],
      question: 'Test?',
    ),
    QuestionResponseModel(
      correctAnswer: 'Test',
      incorrectAnswers: ['none', 'none'],
      question: 'Test?',
    )
  ];

  const request = QuestionRequest(amount: 1, category: 1, type: 'test');
  test(
    'should get the quiz from the repository',
    () async {
      //arrange
      //act
      final result = await usecase.execute(request: request);
      //assert
      expect(result, const Right(questions));
    },
  );
}
