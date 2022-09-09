import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz/core/util/exceptions.dart';
import 'package:quiz/data/dataProvider/server/httpService/api_provider.dart';
import 'package:quiz/data/models/response/quiz_response.dart';
import 'package:quiz/data/models/request/quiz_request.dart';

/// Throws a [ServerException] for all error codes.
class HttpProvider implements ApiProvider {
  @override
  Future<List<QuestionResponseModel>> getRemoteQuestions(
      {required QuestionRequest request}) async {
    try {
      final http.Client client = http.Client();
      final uri = Uri.https('opentdb.com', '/api.php', request.toMap());
      final headers = {
        "Content-Type": 'application/json',
      };
      final response = await client.get(uri, headers: headers);
      if (response.statusCode == 200) {
        final data = Map<String, dynamic>.from(json.decode(response.body));
        final results = List<Map<String, dynamic>>.from(data['results']);
        final questions = results
            .map(
              (e) => QuestionResponseModel.fromJson(e),
            )
            .toList();
        return questions;
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
