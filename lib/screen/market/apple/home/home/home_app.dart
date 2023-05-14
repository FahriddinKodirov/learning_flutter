import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/apple/home/cupitino_picker_app.dart';
import 'package:learning_flutter/screen/market/apple/home/switch_app.dart';
import 'package:learning_flutter/screen/market/apple/home/alert_dialog_app.dart';
import 'package:learning_flutter/screen/market/apple/home/action_sheet_app.dart';
import 'package:learning_flutter/screen/market/apple/home/search_app.dart';
import 'package:learning_flutter/screen/market/apple/home/slider_app.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height(context) * 0.14,
            ),
            row('action_sheet_app', const ActionSheetExample()),
            row('alert_dialog_app', const AlertDialogExample()),
            row('cupition_picker_app', const CupertinoPickerExample()),
            row('switch_app', const CupertinoSwitchExample()),
            const Divider(
              color: Colors.black,
            ),
            const Text(
              'search_app',
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            const SearchTextFieldExample(),
            const Divider(
              color: Colors.black,
            ),
            const Text(
              'slider_app',
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height(context) * 0.03,
            ),
            const CupertinoSliderExample()
          ],
        ),
      ),
    );
  }

  row(word, widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height(context) * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            word,
            style: const TextStyle(fontSize: 16),
          ),
          widget
        ],
      ),
    );
  }
}
