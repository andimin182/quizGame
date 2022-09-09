import 'package:auto_route/annotations.dart';
import 'package:quiz/presentation/screens/auth/auth_page.dart';
import 'package:quiz/presentation/screens/quiz/home_page.dart';
import 'package:quiz/presentation/screens/quiz/quiz_page.dart';
import 'package:quiz/presentation/screens/quiz/results_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: AuthPage,
      initial: true,
      path: '/auth',
    ),
    MaterialRoute(
      page: HomePage,
      initial: false,
      path: '/home',
    ),
    MaterialRoute(
      page: QuizPage,
      path: '/quiz',
    ),
    MaterialRoute(
      page: ResultsPage,
      path: '/results',
    )
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
