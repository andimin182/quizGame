import 'package:get_it/get_it.dart';
import 'package:quiz/core/util/input_converter.dart';
import 'package:quiz/data/dataProvider/server/httpService/http_service.dart';
import 'package:quiz/data/dataProvider/server/questions_remote_data_source.dart';
import 'package:quiz/data/repositories/quiz_repository_implementation.dart';
import 'package:quiz/domain/repositories/quiz_repository_contract.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart';
import 'package:quiz/presentation/bloc/quiz/question_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:http/http.dart' as http;

// Service Locator
GetIt sL = GetIt.instance;

void init() {
  // Features - Question
  // 1. BLoC
  sL.registerFactory(
    () => QuizBloc(
      getQuestions: sL(),
      inputConverter: sL(),
    ),
  );

  sL.registerFactory(() => QuestionBloc());

  // Auth bloc
  /* sL.registerFactory(
    () => SignInBloc(),
  ); */

  // 2. UseCases
  sL.registerLazySingleton(
    () => GetQuestions(
      repository: sL(),
    ),
  );

  /* sL.registerLazySingleton(() => AuthService(
        provider: sL(),
      )); */

  // 3. Repository
  // Note: repository is a QuizRepository abtract class, hence it cannot be instancieted
  // Therefore, whenever we call the abstract class, we need to instatied its implementation
  sL.registerLazySingleton<QuizRepository>(
    () => QuizRepositoryImpl(
      sL(),
    ),
  );

  // 4. Data Source
  sL.registerLazySingleton<QuestionsRemoteDataSource>(
    () => QuestionsRemoteDataSourceImpl(provider: HttpProvider()),
  );

  sL.registerLazySingleton<QuestionsRemoteDataSourceImpl>(
    () => QuestionsRemoteDataSourceImpl(provider: HttpProvider()),
  );

  // 5. Authentication
  /*  sL.registerLazySingleton<AuthProvider>(() => FirebaseAuthProvider(
        FirebaseAuth.instance,
      ));
  sL.registerLazySingleton<FirebaseAuthProvider>(() => FirebaseAuthProvider(
        FirebaseAuth.instance,
      )); */

  // Core
  // 1. InputConverter
  sL.registerLazySingleton(
    () => InputConverter(),
  );
  // External
  // 1. http package
  sL.registerLazySingleton(() => http.Client());
}
