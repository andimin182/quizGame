import 'package:dartz/dartz.dart';
import 'package:quiz/core/error.dart';
import 'package:quiz/core/util/exceptions.dart';
import 'package:quiz/data/dataProvider/server/httpService/http_service.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/data/models/response/quiz_response.dart';

abstract class QuestionsRemoteDataSource {
  Future<Either<Failure, List<QuestionResponseModel>>> getRemoteQuestions({
    required QuestionRequest request,
  });
}

class QuestionsRemoteDataSourceImpl implements QuestionsRemoteDataSource {
  final HttpProvider provider;

  QuestionsRemoteDataSourceImpl({required this.provider});

  @override
  Future<Either<Failure, List<QuestionResponseModel>>> getRemoteQuestions({
    required QuestionRequest request,
  }) async {
    try {
      final result = await provider.getRemoteQuestions(request: request);
      return Right(result);
    } on ServerException {
      return Left(RepoFailure('Server error'));
    }
  }
}
