import 'package:flutter/material.dart';

class RadioSinmplePage extends StatefulWidget {
  const RadioSinmplePage({super.key});

  @override
  State<RadioSinmplePage> createState() => _RadioSinmplePageState();
}

class _RadioSinmplePageState extends State<RadioSinmplePage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      
    );
  }
}

enum SingingCharacter {lafayette, jefferson}
