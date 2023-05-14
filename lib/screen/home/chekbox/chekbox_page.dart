import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
    );
  }
}
