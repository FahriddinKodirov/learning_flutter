import 'package:flutter/material.dart';

class RotatedBoxPage extends StatelessWidget {
  const RotatedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RotatedBox(
        quarterTurns: 3,
        child: Text('Hello World!'),
      ),
      ),
    );
  }
}