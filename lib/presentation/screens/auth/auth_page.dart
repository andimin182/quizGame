import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/presentation/bloc/auth/auth_bloc.dart';
import 'package:quiz/presentation/bloc/auth/sign_in_bloc.dart';
import 'package:quiz/presentation/common/const/colors.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/router/router.gr.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late GlobalKey<FormState> _globalKey;

  @override
  void initState() {
    _globalKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state.showErrorDialog) {
          final snackBar = SnackBar(
            content: const Text('Invalid email and password combination'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else {
          state.authFailureOrSuccessOption.fold(
            () => null,
            (option) {
              option.fold(
                (_) => null,
                (_) {
                  BlocProvider.of<AuthBloc>(context).add(
                    const AuthEvent.getAuthCheckRequested(),
                  );
                  context.router.replace(
                    const HomeRoute(),
                  );
                },
              );
            },
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: const Text('Quiz Game'),
            centerTitle: true,
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _globalKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '📝',
                      style: TextStyle(
                        fontSize: 130,
                      ),
                    ),
                    const VerticalSpace(size: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: TextFormField(
                        onChanged: (value) =>
                            BlocProvider.of<SignInBloc>(context)
                                .add(SignInEvent.emailChanged(value)),
                        validator: (_) => BlocProvider.of<SignInBloc>(context)
                            .state
                            .email
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                      invalidEmail: (_) => 'Invalid Email',
                                      orElse: () => null,
                                    ),
                                (_) => null),
                        obscureText: false,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: mainColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 3.0,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Insert your email',
                          hintStyle: TextStyle(
                            color: mainColor,
                          ),
                        ),
                        style: const TextStyle(
                          color: mainColor,
                        ),
                      ),
                    ),
                    const VerticalSpace(size: 15),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: TextFormField(
                        onChanged: (value) =>
                            BlocProvider.of<SignInBloc>(context)
                                .add(SignInEvent.passwordChanged(value)),
                        validator: (_) => BlocProvider.of<SignInBloc>(context)
                            .state
                            .password
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                      invalidPassword: (_) =>
                                          'Invalid Password',
                                      orElse: () => null,
                                    ),
                                (_) => null),
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: mainColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 3.0,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                            ),
                          ),
                          hintText: 'Insert your password',
                          hintStyle: TextStyle(
                            color: mainColor,
                          ),
                        ),
                        style: const TextStyle(
                          color: mainColor,
                        ),
                      ),
                    ),
                    const VerticalSpace(
                      size: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.blue,
                              child: TextButton(
                                onPressed: () {
                                  BlocProvider.of<SignInBloc>(context).add(
                                      const SignInEvent
                                          .signInWithEmailAndPasswordPressed());
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.blue,
                              child: TextButton(
                                onPressed: () {
                                  BlocProvider.of<SignInBloc>(context).add(
                                      const SignInEvent
                                          .registerWithEmailAndPasswordPressed());
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpace(size: 25),
                    Visibility(
                      visible: state.isSubmitting,
                      child: const LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
