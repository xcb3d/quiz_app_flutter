import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onTap;
  final String answer;

  const AnswerButton({super.key, required this.onTap, required this.answer});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answer),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
