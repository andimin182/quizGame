import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_character_entities/html_character_entities.dart';
import 'package:quiz/core/constants.dart';

import 'package:quiz/presentation/bloc/quiz/question_bloc.dart';
import 'package:quiz/presentation/common/const/colors.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';

class AnswerCard extends StatefulWidget {
  final String answer;
  final String correctAnswer;
  final VoidCallback onTap;

  const AnswerCard({
    Key? key,
    required this.answer,
    required this.onTap,
    required this.correctAnswer,
  }) : super(key: key);

  @override
  State<AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  bool isTapped = false;
  bool isCorrectAnswer = false;

  @override
  void initState() {
    if (widget.answer == widget.correctAnswer) {
      isCorrectAnswer = true;
    }
    super.initState();
  }

  void resetValues() {
    isTapped = false;
    isCorrectAnswer = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionBloc, QuestionState>(
      listener: (context, state) {
        if (state.status == QuizStatus.initial) {
          resetValues();
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: () {
            widget.onTap();
            isTapped = true;
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                width: width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: isTapped && state.status == QuizStatus.correct ||
                            isCorrectAnswer && state.answered
                        ? Border.all(
                            color: Colors.green,
                            width: 5.0,
                          )
                        : isTapped && state.status == QuizStatus.incorrect
                            ? Border.all(
                                color: Colors.red,
                                width: 5.0,
                              )
                            : null),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        HtmlCharacterEntities.decode(widget.answer),
                        style: const TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: state.answered,
                      child: isTapped && state.status == QuizStatus.correct ||
                              isCorrectAnswer && state.answered
                          ? const Icon(
                              Icons.check_circle_outline_outlined,
                              color: Colors.green,
                            )
                          : isTapped && state.status == QuizStatus.incorrect
                              ? const Icon(
                                  Icons.highlight_off_outlined,
                                  color: Colors.red,
                                )
                              : const SizedBox(width: 0, height: 0),
                    ),
                  ],
                ),
              ),
              VerticalSpace(
                size: heigth / 82.05,
              ),
            ],
          ),
        );
      },
    );
  }
}
