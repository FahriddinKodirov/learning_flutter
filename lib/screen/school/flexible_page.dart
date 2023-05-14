import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Flexible(
          flex: 2,
          child: Container(
          color: Colors.red,
        )),
        Flexible(
          child: Container(
          color: Colors.amber,
        ))
      ],),
    );
  }
}