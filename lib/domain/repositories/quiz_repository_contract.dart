import 'package:dartz/dartz.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import '../../core/error.dart';
import '../entities/quiz_entity.dart';

/// Abstract class for the Domain Repository
abstract class QuizRepository {
  /// method getQuestions to be implemented which returns either a [Failure] or
  /// a [Question] object. It needs the arguments of a request.
  Future<Either<Failure, List<Question>>> getQuestions({
    required QuestionRequest request,
  });
}
