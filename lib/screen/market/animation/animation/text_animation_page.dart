import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class TextAnimationPage extends StatefulWidget {
  const TextAnimationPage({super.key});

  @override
  _TextAnimationPageState createState() => _TextAnimationPageState();
}

class _TextAnimationPageState extends State<TextAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'animated text kit',
              speed: const Duration(milliseconds: 150),
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
          displayFullTextOnTap: true,
          stopPauseOnTap: false,
        ),
      ),
    );
  }
}