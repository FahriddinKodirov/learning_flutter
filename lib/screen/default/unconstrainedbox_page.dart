import 'package:flutter/material.dart';

class UnconstrainedBoxPage extends StatelessWidget {
  const UnconstrainedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const UnconstrainedBox(
        constrainedAxis:Axis.vertical,
        textDirection:TextDirection.ltr,
        child: Text('salom'),
      ),
    );
  }
}