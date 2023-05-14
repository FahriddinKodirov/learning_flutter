import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Center(child: const Text('messages:')),
        for (var m in messages)
           Text(m)
      ],),
    );
  }
}

List messages = [
  'salom',
  'qalaysan',
  'yahshian'
];