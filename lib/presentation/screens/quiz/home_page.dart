import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/core/constants.dart';
import 'package:quiz/presentation/bloc/auth/auth_bloc.dart';
import 'package:quiz/presentation/common/const/colors.dart';
import 'package:quiz/presentation/common/widget/quiz/input_card.dart';
import 'package:quiz/presentation/common/widget/quiz/input_widget.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/router/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 4, 30),
      appBar: AppBar(
        title: const Center(child: Text('Quiz Game')),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              // popupmenu item 1
              PopupMenuItem(
                value: 1,
                onTap: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.signedOut());
                  context.router.replace(const AuthRoute());
                  BlocProvider.of<AuthBloc>(context).add(
                    const AuthEvent.getAuthCheckRequested(),
                  );
                },
                child: const Text("Sign out"),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const VerticalSpace(size: 50),
                const Text(
                  '❔',
                  style: TextStyle(
                    fontSize: 100,
                  ),
                ),
                const VerticalSpace(size: 20),
                inputQuestionCard(
                  height: heigth / 5.86,
                  answer: 'Choose your quiz',
                  colorString: Colors.white,
                  colorBg: mainColor,
                ),
                const InputWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
