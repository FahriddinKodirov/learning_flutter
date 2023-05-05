import 'package:flutter/material.dart';


class SwitchExampleDf extends StatefulWidget {
  const SwitchExampleDf({super.key});

  @override
  State<SwitchExampleDf> createState() => _SwitchExampleDfState();
}

class _SwitchExampleDfState extends State<SwitchExampleDf> {
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: light0,
            onChanged: (bool value) {
              setState(() {
                light0 = value;
              });
            },
          ),
          Switch(
            thumbIcon: thumbIcon,
            value: light1,
            onChanged: (bool value) {
              setState(() {
                light1 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
