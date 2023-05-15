import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonAnimationPage extends StatefulWidget {
  const ButtonAnimationPage({super.key});

  @override
  _ButtonAnimationPageState createState() => _ButtonAnimationPageState();
}

class _ButtonAnimationPageState extends State<ButtonAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedButton(
          color: Colors.blue,
          onPressed: () {},
          enabled: true,
          shadowDegree: ShadowDegree.light,
          child: const Text(
            'Simple button',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}