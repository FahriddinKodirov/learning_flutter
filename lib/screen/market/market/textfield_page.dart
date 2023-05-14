import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: RawKeyboardListener(
          focusNode: FocusNode(
           skipTraversal:true 
          ),
          child: TextField()),
      ),
    );
  }
}