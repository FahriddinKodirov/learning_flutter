import 'package:flutter/cupertino.dart';

class CupertinoSwitchExample extends StatefulWidget {
  const CupertinoSwitchExample({super.key});

  @override
  State<CupertinoSwitchExample> createState() => _CupertinoSwitchExampleState();
}

class _CupertinoSwitchExampleState extends State<CupertinoSwitchExample> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
          value: switchValue,
          activeColor: CupertinoColors.activeBlue,
          onChanged: (bool? value) {
            setState(() {
              switchValue = value ?? false;
            });
          },
    );
  }
}
