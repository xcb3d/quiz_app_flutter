import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startScreen;

  const StartScreen({super.key, required this.startScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/assets/icon.png',
            width: 300,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startScreen,
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
