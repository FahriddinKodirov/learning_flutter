import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/my_utils.dart';


class AutocompleteBasicPage extends StatelessWidget {
  const AutocompleteBasicPage({super.key});

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Autocomplete'),),
      body: Padding(
        padding:  EdgeInsets.all(height(context)*0.06),
        child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              debugPrint('You just selected $selection');
            },
        ),
      ),
    );
  }
}
