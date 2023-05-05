import 'package:flutter/material.dart';

class SncakBarPage extends StatelessWidget {
  const SncakBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Tap'),
            ));
          },
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Flat Button'),
          ),
        ),
      ),
    );
  }
}