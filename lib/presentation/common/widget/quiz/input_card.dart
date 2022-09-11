import 'package:flutter/material.dart';

Widget inputQuestionCard({
  required String answer,
  required Color colorString,
  required Color colorBg,
  required double height,
}) {
  return Container(
    padding: const EdgeInsets.all(15),
    height: height,
    width: 350,
    decoration: BoxDecoration(
      color: colorBg,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        answer,
        style: TextStyle(
          color: colorString,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
  );
}
