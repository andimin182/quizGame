import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/core/constants.dart';
import 'package:quiz/presentation/bloc/auth/auth_bloc.dart';
import 'package:quiz/presentation/common/const/colors.dart';
import 'package:quiz/presentation/router/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    heigth = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    log('Height: $heigth');
    log('width: $width');
    return BlocListener<AuthBloc, AuthState>(
      listener: ((context, state) {
        state.map(
          initial: (_) {
            log('unauthenticated initial');
            context.router.replace(const AuthRoute());
          },
          authenticated: (_) {
            log('authenticated');
            context.router.replace(const HomeRoute());
          },
          unauthenticated: (_) {
            log('unauthenticated');
            context.router.replace(const AuthRoute());
          },
        );
      }),
      child: Scaffold(
        body: Container(
          color: mainColor,
        ),
      ),
    );
  }
}
