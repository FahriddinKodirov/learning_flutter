import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditableTextPage extends StatefulWidget {
  const EditableTextPage({super.key});

  @override
  State<EditableTextPage> createState() => _EditableTextPageState();
}

class _EditableTextPageState extends State<EditableTextPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: EditableText(
          backgroundCursorColor: Colors.red, 
          controller: controller, 
          cursorColor: Colors.orange, 
          focusNode: FocusNode(), 
          style: TextStyle(fontSize: 20),),
      ),
    );
  }
}