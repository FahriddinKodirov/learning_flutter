import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/apple/market/date_picker_app.dart';
import 'package:learning_flutter/screen/market/apple/market/cupertinoIndicator_app.dart';
import 'package:learning_flutter/screen/market/apple/market/cupertino_button_app.dart';
import 'package:learning_flutter/screen/market/apple/market/list_app.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class MarketApp extends StatefulWidget {
  const MarketApp({super.key});

  @override
  State<MarketApp> createState() => _MarketAppState();
}

class _MarketAppState extends State<MarketApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Market'),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height(context) * 0.11,
            ),
            const Text('cupirtion_button_app',style:TextStyle(color: Colors.teal)),
            const CupertinoButtonExample(),
            const Divider(
              color: Colors.black,
            ),
            const Text('cupirtinoIndicator_app',style:TextStyle(color: Colors.teal),),
            const CupertinoIndicatorExample(),
            const Divider(
              color: Colors.black,
            ),
            const Text('date_picker_app',style:TextStyle(color: Colors.teal),),
            const DatePickerExample2(),
            const ListApp(),
           
            SizedBox(height: height(context)*0.1,)
          ],
        ),
      ),
    );
  }


}
