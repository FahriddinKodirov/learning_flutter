import 'package:flutter/material.dart';

class SliderExampleTwo extends StatefulWidget {
  const SliderExampleTwo({super.key});

  @override
  State<SliderExampleTwo> createState() => _SliderExampleTwoState();
}

class _SliderExampleTwoState extends State<SliderExampleTwo> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      
    );
  }
}
