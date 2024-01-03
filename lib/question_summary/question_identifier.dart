import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectQuestion;

  const QuestionIdentifier(
      {super.key,
      required this.questionIndex,
      required this.isCorrectQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isCorrectQuestion
              ? Color.fromARGB(255, 75, 195, 250)
              : Color.fromARGB(255, 231, 128, 59)),
      child: Text(
        (questionIndex + 1).toString(),
      ),
    );
  }
}
