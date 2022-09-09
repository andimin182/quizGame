import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz/injection.dart';
import 'package:quiz/injection_container.dart' as di;
import 'package:quiz/presentation/bloc/auth/sign_in_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/presentation/router/router.gr.dart';

import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Dependancy injection
  configureDependencies(Environment.prod);
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sL<QuizBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignInBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
