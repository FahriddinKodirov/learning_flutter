import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          child: const Text('MaterialButton'),
        ),
        RawMaterialButton(
          onPressed: () {},
          child: const Text('RawMaterialButton'),
        ),
        FilledButton(onPressed: () {}, child: const Text('FilledButton')),
       
        const SizedBox(
          height: 10,
        ),
        BottomAppBar(
          child: Container(),
        ),
        const ActionChip(label: Text('ActionChip')),
        FilterChip(
          label: const Text('FilterChip'),
          onSelected: (value) {},
        ),
        const InputChip(label: Text('InputChip')),
        const Tooltip(
          message: 'I am a Tooltip',
          child: Text('Hover over the text to show a tooltip.'),
        ),
        SizedBox(height: height(context)*0.02,),
         const LinearProgressIndicator(
          value: 0.6,
        ),
      ],
    );
  }
}
