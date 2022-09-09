import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/presentation/common/widget/quiz/quiz_page_widget.dart';
import 'package:quiz/presentation/common/widget/quiz/in_progress_widget.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        if (state is QuizLoadingState) {
          return const InProgress();
        } else if (state is QuizErrorState) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 26, 4, 30),
            appBar: AppBar(
              title: const Text('Category'),
            ),
            body: Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        } else if (state is QuizLoadedState) {
          return QuizPageWidget(
            questions: state.questions,
          );
        }
        return const Text('unexpected');
      },
    );
  }
}
