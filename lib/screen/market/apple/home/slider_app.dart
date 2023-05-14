import 'package:flutter/cupertino.dart';

class CupertinoSliderExample extends StatefulWidget {
  const CupertinoSliderExample({super.key});

  @override
  State<CupertinoSliderExample> createState() => _CupertinoSliderExampleState();
}

class _CupertinoSliderExampleState extends State<CupertinoSliderExample> {
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('$_currentSliderValue'),
        CupertinoSlider(
          key: const Key('slider'),
          value: _currentSliderValue,
          divisions: 5,
          max: 100,
          activeColor: CupertinoColors.systemPurple,
          thumbColor: CupertinoColors.systemPurple,
          onChangeStart: (double value) {
            setState(() {
              _sliderStatus = 'Sliding';
            });
          },
          onChangeEnd: (double value) {
            setState(() {
              _sliderStatus = 'Finished sliding';
            });
          },
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
        Text(
          _sliderStatus ?? '',
          style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                fontSize: 12,
              ),
        ),
      ],
    );
  }
}
