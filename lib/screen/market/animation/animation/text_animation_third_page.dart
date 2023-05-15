import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextAnimationThirdPage extends StatefulWidget {
  const TextAnimationThirdPage({super.key});

  @override
  _TextAnimationThirdPageState createState() => _TextAnimationThirdPageState();
}

class _TextAnimationThirdPageState extends State<TextAnimationThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello World!'),
              WavyAnimatedText('Look at the waves.'),
            ],
            repeatForever: true,
            isRepeatingAnimation: true,
          ),
        ),
      ),
    );
  }
}