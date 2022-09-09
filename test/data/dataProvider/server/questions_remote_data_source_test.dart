/* import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:quiz/data/dataProvider/server/questions_remote_data_source.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/data/models/response/quiz_response.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import '../../../fixtures/fixture_reader.dart';
import 'questions_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late QuestionsRemoteDataSourceImpl remoteDataSource;
  late MockClient mockClient;
  const headers = {"Content-Type": "application/json"};
  final dataMultiple = fixture('response_multiple.json');
  const request = QuestionRequest(
    amount: 10,
    category: 2,
    type: 'multiple',
  );
  final data = Map<String, dynamic>.from(json.decode(dataMultiple));
  final results = List<Map<String, dynamic>>.from(data['results']);
  final expected =
      results.map((e) => QuestionResponseModel.fromJson(e)).toList();

  final uri = Uri.https('opentdb.com', '/api.php', request.toMap());

  setUp(() {
    mockClient = MockClient();
    remoteDataSource = QuestionsRemoteDataSourceImpl(provider: mockClient);
  });

  test(
    '''should perform a GET request on an URL 
    with endpoint category, type and amount''',
    () async {
      //arrange
      when(mockClient.get(
        any,
        headers: anyNamed('headers'),
      )).thenAnswer(
        (_) async => http.Response(
          dataMultiple,
          200,
        ),
      );
      //act
      remoteDataSource.getRemoteQuestions(request: request);
      //assert
      verify(
        mockClient.get(
          uri,
          headers: headers,
        ),
      );
    },
  );

  test(
    'should return a List<Questions> when the response is success',
    () async {
      //arrange
      when(mockClient.get(
        any,
        headers: anyNamed('headers'),
      )).thenAnswer(
        (_) async => http.Response(
          dataMultiple,
          200,
        ),
      );
      //act
      final result =
          await remoteDataSource.getRemoteQuestions(request: request);
      //assert
      expect(result, isA<List<Question>>());
    },
  );

  test(
    'should return a correct value',
    () async {
      //arrange
      when(mockClient.get(
        any,
        headers: anyNamed('headers'),
      )).thenAnswer(
        (_) async => http.Response(
          dataMultiple,
          200,
        ),
      );
      //act
      final result =
          await remoteDataSource.getRemoteQuestions(request: request);
      //assert
      expect(result, equals(expected));
    },
  );
}
 */