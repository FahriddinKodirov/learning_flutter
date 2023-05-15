import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class TextAnimationSecondPage extends StatefulWidget {
  const TextAnimationSecondPage({super.key});

  @override
  _TextAnimationSecondPageState createState() => _TextAnimationSecondPageState();
}

class _TextAnimationSecondPageState extends State<TextAnimationSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            isRepeatingAnimation: true,
            animatedTexts: [
              FadeAnimatedText('do IT!'),
              FadeAnimatedText('do it RIGHT!!'),
              FadeAnimatedText('do it RIGHT NOW!!!'),
            ],
          ),
        ),
      ),
    );
  }
}