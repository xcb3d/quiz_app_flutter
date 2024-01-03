import 'package:clone_quiz_app/question_summary/question_identifier.dart';
import 'package:clone_quiz_app/question_summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary({super.key, required this.summaryData});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((itemData) {
            return SummaryItem(itemData: itemData);
          }).toList(),
        ),
      ),
    );
  }
}
