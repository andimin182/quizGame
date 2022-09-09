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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../screens/auth/auth_page.dart' as _i1;
import '../screens/quiz/home_page.dart' as _i2;
import '../screens/quiz/quiz_page.dart' as _i3;
import '../screens/quiz/results_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    QuizRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.QuizPage());
    },
    ResultsRoute.name: (routeData) {
      final args = routeData.argsAs<ResultsRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ResultsPage(
              key: args.key, results: args.results, length: args.length));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/auth', fullMatch: true),
        _i5.RouteConfig(AuthRoute.name, path: '/auth'),
        _i5.RouteConfig(HomeRoute.name, path: '/home'),
        _i5.RouteConfig(QuizRoute.name, path: '/quiz'),
        _i5.RouteConfig(ResultsRoute.name, path: '/results')
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.QuizPage]
class QuizRoute extends _i5.PageRouteInfo<void> {
  const QuizRoute() : super(QuizRoute.name, path: '/quiz');

  static const String name = 'QuizRoute';
}

/// generated route for
/// [_i4.ResultsPage]
class ResultsRoute extends _i5.PageRouteInfo<ResultsRouteArgs> {
  ResultsRoute({_i6.Key? key, required int results, required int length})
      : super(ResultsRoute.name,
            path: '/results',
            args: ResultsRouteArgs(key: key, results: results, length: length));

  static const String name = 'ResultsRoute';
}

class ResultsRouteArgs {
  const ResultsRouteArgs(
      {this.key, required this.results, required this.length});

  final _i6.Key? key;

  final int results;

  final int length;

  @override
  String toString() {
    return 'ResultsRouteArgs{key: $key, results: $results, length: $length}';
  }
}
