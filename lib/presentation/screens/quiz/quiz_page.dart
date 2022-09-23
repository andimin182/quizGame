import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_character_entities/html_character_entities.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/presentation/bloc/quiz/question_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/presentation/common/input_type_category.dart';
import 'package:quiz/presentation/common/widget/quiz/answer_card.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/router/router.gr.dart';
import '../../../injection_container.dart';
import 'package:auto_route/auto_route.dart';

class QuizPage extends StatefulWidget {
  final List<Question> questions;
  final String categoryName;
  const QuizPage({
    Key? key,
    required this.questions,
    required this.categoryName,
  }) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sL<QuestionBloc>()),
        BlocProvider(create: (context) => sL<QuizBloc>()),
      ],
      child: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 26, 4, 30),
            appBar: AppBar(
                title: Text(
              CategoryData.categories.keys.firstWhere(
                (k) => CategoryData.categories[k] == widget.categoryName,
              ),
            )),
            body: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemCount: widget.questions.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${index + 1}/${widget.questions.length}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    LinearProgressIndicator(
                      value: (index + 1) / widget.questions.length,
                      backgroundColor: Colors.white,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                    const VerticalSpace(size: 20),
                    Container(
                      height: 120,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        HtmlCharacterEntities.decode(
                            widget.questions[index].question),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const VerticalSpace(size: 15),
                    SizedBox(
                      height: 400,
                      child: Center(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.questions[index].answers!.length,
                            itemBuilder: (BuildContext context, int i) {
                              return AnswerCard(
                                answer: widget.questions[index].answers![i],
                                correctAnswer:
                                    widget.questions[index].correctAnswer,
                                onTap: () {
                                  BlocProvider.of<QuestionBloc>(context).add(
                                    SubmitAnswer(
                                      submittedAnswer:
                                          widget.questions[index].answers![i],
                                      correctAnswer:
                                          widget.questions[index].correctAnswer,
                                      numberQuestions: widget.questions.length,
                                      currentQuestion: index + 1,
                                    ),
                                  );
                                },
                              );
                            }),
                      ),
                    ),
                    const VerticalSpace(size: 20),
                    BlocBuilder<QuestionBloc, QuestionState>(
                      builder: (context, state) {
                        if (state.showButtonResults) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            onPressed: () {
                              context.router.replace(ResultsRoute(
                                length: widget.questions.length,
                                results: state.cacheCorrectAnswers,
                              ));
                            },
                            child: const Text(
                              'Show Results',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          );
                        } else if (state.answered) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            onPressed: () {
                              _pageController.animateToPage(
                                index + 1,
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease,
                              );
                              BlocProvider.of<QuestionBloc>(context)
                                  .add(const NextQuestion());
                            },
                            child: const Text(
                              'Next Question',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          );
                        }
                        return Container();
                      },
                    ),
                    const VerticalSpace(size: 10),
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
