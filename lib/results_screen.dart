import 'package:clone_quiz_app/data/data.dart';
import 'package:clone_quiz_app/question_summary/question_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> chosenAnswer;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'user_answer': chosenAnswer[i],
        'correct_answer': questions[i].answer[0]
      });
    }
    return summary;
  }

  const ResultsScreen({super.key, required this.chosenAnswer});
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summaryData = getSummaryData();
    final numberTotalQuestion = questions.length;
    final numberCorrectQuestion = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Text('You answer $numberCorrectQuestion of $numberTotalQuestion'),
          QuestionSummary(summaryData: summaryData),
          TextButton(onPressed: () {}, child: Text('Restart Quiz'))
        ]),
      ),
    );
  }
}
