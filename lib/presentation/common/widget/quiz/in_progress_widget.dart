import 'package:flutter/material.dart';

class InProgress extends StatelessWidget {
  const InProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 4, 30),
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
