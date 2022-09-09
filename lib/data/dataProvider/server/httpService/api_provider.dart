import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/data/models/response/quiz_response.dart';

/// Throws a [ServerException] for all error codes.
abstract class ApiProvider {
  Future<List<QuestionResponseModel>> getRemoteQuestions({
    required QuestionRequest request,
  });
}
