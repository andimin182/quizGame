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
  String? categoryValue;
  String? typeValue;

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
    return BlocListener<QuizBloc, QuizState>(
      listener: (context, state) {
        if (state.isLoaded) {
          context.router.push(QuizRoute(
            questions: state.results,
            categoryName: state.category.getOrCrash().toString(),
          ));
        }
      },
      child: Form(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                hint: const Text('Choose the type'),
                isExpanded: true,
                value: typeValue,
                onChanged: (String? newValue) {
                  setState(() {
                    typeValue = newValue;
                  });
                  final value = TypeData.type[newValue];
                  BlocProvider.of<QuizBloc>(context)
                      .add(QuizEvent.typeChanged(value ?? ''));
                },
                items: TypeData.type.keys
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
                disabledHint: const Text('Choose category'),
                hint: const Text('Choose category'),
                isExpanded: true,
                value: categoryValue,
                onChanged: (String? newValue) {
                  setState(() {
                    categoryValue = newValue;
                  });
                  final value = CategoryData.categories[newValue];
                  BlocProvider.of<QuizBloc>(context).add(
                    QuizEvent.categoryChanged(value ?? ''),
                  );
                },
                items: CategoryData.categories.keys
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) {
                  BlocProvider.of<QuizBloc>(context).add(
                    QuizEvent.amountChanged(
                      value,
                    ),
                  );
                },
                controller: amountController,
                decoration: const InputDecoration(
                  hintText: 'Choose the number',
                ),
              ),
            ),
            const VerticalSpace(size: 20),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<QuizBloc>(context).add(
                  const QuizEvent.getQuizPressed(),
                );
              },
              child: const Text(
                'Start the quiz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const VerticalSpace(size: 20),
            BlocBuilder<QuizBloc, QuizState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.isLoading,
                  child: const LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
