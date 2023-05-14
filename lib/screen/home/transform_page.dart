import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class TransformPage extends StatelessWidget {
  const TransformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context)*0.1),
      child: Container(
      color: Colors.black,
      child: Transform(
      alignment: Alignment.topRight,
      transform: Matrix4.skewY(0.3)..rotateZ(-4 / 12.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color(0xFFE8581C),
        child: const Text('Apartment for rent!'),
      ),
      
    ),
      ),
    );
  }
}