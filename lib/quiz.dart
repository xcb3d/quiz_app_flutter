import 'package:clone_quiz_app/data/data.dart';
import 'package:clone_quiz_app/quiz_screen.dart';
import 'package:clone_quiz_app/results_screen.dart';
import 'package:clone_quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  @override
  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void onSelectAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startScreen: switchScreen);
    if (activeScreen == 'quiz-screen') {
      screenWidget = QuizScreen(
        onSelectAnswer: onSelectAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswer: selectedAnswer);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 219, 56, 56),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
