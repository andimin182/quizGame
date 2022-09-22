import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/presentation/bloc/auth/auth_bloc.dart';
import 'package:quiz/presentation/router/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: ((context, state) {
        state.map(
          initial: (_) {
            print('unauthenticated initial');
            context.router.replace(const AuthRoute());
          },
          authenticated: (_) {
            print('authenticated');
            context.router.replace(const HomeRoute());
          },
          unauthenticated: (_) {
            print('unauthenticated');
            context.router.replace(const AuthRoute());
          },
        );
      }),
      child: const Scaffold(
        body: CircularProgressIndicator(),
      ),
    );
  }
}
