import 'package:flutter/cupertino.dart';

enum Sky { midnight, viridian, cerulean }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.midnight: const Color(0xff191970),
  Sky.viridian: const Color(0xff40826d),
  Sky.cerulean: const Color(0xff007ba7),
};

class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() =>
      _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  Sky _selectedSegment = Sky.midnight;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSegmentedControl<Sky>(
          selectedColor: skyColors[_selectedSegment],
          padding: const EdgeInsets.symmetric(horizontal: 12),
          groupValue: _selectedSegment,
          onValueChanged: (Sky value) {
            setState(() {
              _selectedSegment = value;
            });
          },
          children: const <Sky, Widget>{
            Sky.midnight: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Midnight'),
            ),
            Sky.viridian: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Viridian'),
            ),
            Sky.cerulean: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Cerulean'),
            ),
          },
        ),
      ),
      child: Center(
        child: Text(
          'Selected Segment: ${_selectedSegment.name}',
          style: const TextStyle(color: CupertinoColors.white),
        ),
      ),
    );
  }
}
