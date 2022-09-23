import 'package:flutter/material.dart';
import 'package:quiz/core/constants.dart' as c;

Widget inputQuestionCard({
  required String answer,
  required Color colorString,
  required Color colorBg,
  required double height,
}) {
  return Container(
    padding: const EdgeInsets.all(15),
    height: height,
    width: c.heigth / 1.17,
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
