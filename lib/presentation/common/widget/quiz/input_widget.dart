import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/presentation/common/input_type_category.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({Key? key}) : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late TextEditingController amountController;
  String categoryValue = Category.categories.keys.toList()[0];
  String typeValue = Type.type[0];
  String defaultType = Type.type[0];

  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
  }

  @override
  void dispose() {
    amountController.dispose();
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
          child: DropdownButton<String>(
            isExpanded: true,
            value: typeValue,
            onChanged: (String? newValue) {
              BlocProvider.of<QuizBloc>(context).add(
                QuizEvent.typeChanged(Type.getMap()[newValue] ?? ''),
              );
              setState(() {
                typeValue = newValue ?? defaultType;
              });
            },
            items: Type.type
                .map<DropdownMenuItem<String>>(
                  (category) => DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  ),
                )
                .toList(),
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
          child: DropdownButton<String>(
            isExpanded: true,
            value: categoryValue,
            onChanged: (String? newValue) {
              BlocProvider.of<QuizBloc>(context).add(
                QuizEvent.categoryChanged(Category.categories[newValue] ?? ''),
              );
              setState(() {
                categoryValue = newValue!;
              });
            },
            items: Category.categories.keys
                .toList()
                .map<DropdownMenuItem<String>>(
                  (category) => DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  ),
                )
                .toList(),
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
            onChanged: (value) {
              BlocProvider.of<QuizBloc>(context).add(
                QuizEvent.amountChanged(value),
              );
            },
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
              const QuizEvent.getQuizPressed(),
            );
            context.router.replace(const QuizRoute());
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
