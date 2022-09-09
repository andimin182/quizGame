import 'package:quiz/data/dataProvider/server/questions_remote_data_source.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/core/error.dart';
import 'package:dartz/dartz.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/repositories/quiz_repository_contract.dart';

class QuizRepositoryImpl implements QuizRepository {
  final QuestionsRemoteDataSourceImpl remoteDataSourceImpl;

  QuizRepositoryImpl(this.remoteDataSourceImpl);

  @override
  Future<Either<Failure, List<Question>>> getQuestions({
    required QuestionRequest request,
  }) async {
    final data =
        await remoteDataSourceImpl.getRemoteQuestions(request: request);

    return data.fold((fail) {
      return Left(fail);
    }, (correct) {
      final result = correct.map((question) => question.toEntity()).toList();
      return Right(result);
    });
  }
}
