import 'package:clone_quiz_app/question_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  final Map<String, Object> itemData;

  const SummaryItem({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: itemData['question_index'] as int,
              isCorrectQuestion: isCorrectAnswer),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemData['question'] as String),
                SizedBox(
                  height: 10,
                ),
                Text(itemData['user_answer'] as String),
                Text(itemData['correct_answer'] as String)
              ],
            ),
          )
        ],
      ),
    );
  }
}
