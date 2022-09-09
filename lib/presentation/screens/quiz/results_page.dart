import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quiz/presentation/common/widget/vertical_space.dart';
import 'package:quiz/presentation/router/router.gr.dart';

class ResultsPage extends StatelessWidget {
  final int results;
  final int length;
  const ResultsPage({
    Key? key,
    required this.results,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 4, 30),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Correct Answers:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              '$results/$length',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            const VerticalSpace(size: 50),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
                onPressed: () {
                  context.router.replace(const HomeRoute());
                  /* Navigator.pop(context);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      )); */
                },
                child: const Text(
                  'New Quiz',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
