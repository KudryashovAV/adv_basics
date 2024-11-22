import 'package:flutter/material.dart';

class QuizStarter extends StatelessWidget {
  const QuizStarter(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(150, 250, 250, 250)),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
