import 'package:dartz/dartz.dart';
import 'package:quiz/core/error.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/repositories/quiz_repository_contract.dart';

class GetQuestions {
  final QuizRepository repository;

  GetQuestions({required this.repository});

  Future<Either<Failure, List<Question>>> execute({
    required QuestionRequest request,
  }) async {
    final result = await repository.getQuestions(
      request: request,
    );
    return result;
  }
}
