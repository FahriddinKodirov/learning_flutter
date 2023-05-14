import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class SncakBarPage extends StatelessWidget {
  const SncakBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height(context)*0.1),
      child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('snack_bar'),
              ));
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Snack Bar'),
           ),
      ),
    );
  }
}