import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/screens/quiz/quiz_page.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late TextEditingController amountController;
  late TextEditingController categoryController;
  late TextEditingController typeController;

  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
    categoryController = TextEditingController();
    typeController = TextEditingController();
  }

  @override
  void dispose() {
    amountController.dispose();
    typeController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: categoryController,
            decoration: const InputDecoration(
              hintText: 'Scegli la categoria',
            ),
          ),
        ),
        const VerticalSpace(size: 20),
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: typeController,
            decoration: const InputDecoration(
              hintText: 'Scegli il tipo',
            ),
          ),
        ),
        const VerticalSpace(size: 20),
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: amountController,
            decoration: const InputDecoration(
              hintText: 'Scegli il numero',
            ),
          ),
        ),
        const VerticalSpace(size: 20),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<QuizBloc>(context).add(
              GetQuizEvent(
                category: categoryController.text,
                amount: amountController.text,
                type: typeController.text,
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuizPage(),
              ),
            );
          },
          child: const Text(
            'Comincia il quiz',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
