import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  const StartScreen.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.purple;

  startQuiz() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Learn Flutter the fun way!",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 60,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
