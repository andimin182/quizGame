// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/entities/quiz_entity.dart' as _i8;
import '../screens/auth/auth_page.dart' as _i2;
import '../screens/quiz/home_page.dart' as _i3;
import '../screens/quiz/quiz_page.dart' as _i4;
import '../screens/quiz/results_page.dart' as _i5;
import '../screens/splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    AuthRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    QuizRoute.name: (routeData) {
      final args = routeData.argsAs<QuizRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.QuizPage(
              key: args.key,
              questions: args.questions,
              categoryName: args.categoryName));
    },
    ResultsRoute.name: (routeData) {
      final args = routeData.argsAs<ResultsRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ResultsPage(
              key: args.key, results: args.results, length: args.length));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(AuthRoute.name, path: '/auth'),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(QuizRoute.name, path: '/quiz'),
        _i6.RouteConfig(ResultsRoute.name, path: '/results')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.QuizPage]
class QuizRoute extends _i6.PageRouteInfo<QuizRouteArgs> {
  QuizRoute(
      {_i7.Key? key,
      required List<_i8.Question> questions,
      required String categoryName})
      : super(QuizRoute.name,
            path: '/quiz',
            args: QuizRouteArgs(
                key: key, questions: questions, categoryName: categoryName));

  static const String name = 'QuizRoute';
}

class QuizRouteArgs {
  const QuizRouteArgs(
      {this.key, required this.questions, required this.categoryName});

  final _i7.Key? key;

  final List<_i8.Question> questions;

  final String categoryName;

  @override
  String toString() {
    return 'QuizRouteArgs{key: $key, questions: $questions, categoryName: $categoryName}';
  }
}

/// generated route for
/// [_i5.ResultsPage]
class ResultsRoute extends _i6.PageRouteInfo<ResultsRouteArgs> {
  ResultsRoute({_i7.Key? key, required int results, required int length})
      : super(ResultsRoute.name,
            path: '/results',
            args: ResultsRouteArgs(key: key, results: results, length: length));

  static const String name = 'ResultsRoute';
}

class ResultsRouteArgs {
  const ResultsRouteArgs(
      {this.key, required this.results, required this.length});

  final _i7.Key? key;

  final int results;

  final int length;

  @override
  String toString() {
    return 'ResultsRouteArgs{key: $key, results: $results, length: $length}';
  }
}
