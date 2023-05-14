import 'package:flutter/material.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  const FractionallySizedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.3,
          alignment: FractionalOffset.center,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
