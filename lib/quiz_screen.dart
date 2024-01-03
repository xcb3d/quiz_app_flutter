import 'package:clone_quiz_app/answer_button.dart';
import 'package:clone_quiz_app/data/data.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final void Function(String) onSelectAnswer;

  const QuizScreen({super.key, required this.onSelectAnswer});
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    void answerQuestion(String selectedQuestion) {
      widget.onSelectAnswer(selectedQuestion);
      setState(() {
        currentQuestionIndex += 1;
      });
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ...currentQuestion.getShuffedAnswer().map((answer) {
              return AnswerButton(
                  onTap: () {
                    answerQuestion(answer);
                  },
                  answer: answer);
            })
          ],
        ),
      ),
    );
  }
}
