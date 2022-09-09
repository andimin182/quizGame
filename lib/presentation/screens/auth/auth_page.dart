import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      listener: (context, state) {},
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
                TextFormField(
                  onChanged: (value) => BlocProvider.of<SignInBloc>(context)
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
                const VerticalSpace(size: 15),
                TextFormField(
                  onChanged: (value) => BlocProvider.of<SignInBloc>(context)
                      .add(SignInEvent.passwordChanged(value)),
                  validator: (_) => BlocProvider.of<SignInBloc>(context)
                      .state
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                invalidPassword: (_) => 'Invalid Password',
                                orElse: () => null,
                              ),
                          (_) => null),
                  obscureText: true,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.password_sharp,
                      color: mainColor,
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Insert your password',
                    hintStyle: TextStyle(
                      color: mainColor,
                    ),
                  ),
                  style: const TextStyle(
                    color: mainColor,
                  ),
                ),
                const VerticalSpace(
                  size: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<SignInBloc>(context).add(
                                const SignInEvent
                                    .signInWithEmailAndPasswordPressed());
                            context.router.replace(const HomeRoute());
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
