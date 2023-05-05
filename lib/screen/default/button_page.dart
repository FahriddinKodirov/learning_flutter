import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learning_flutter/screen/effect/menu_animetion.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        MaterialButton(onPressed: (){},
        child: const Text('salom'),
        ),
        RawMaterialButton(onPressed: (){},
        child: const Text('hello'),),
        FilledButton(onPressed: (){}, child: const Text('ads')),
        LinearProgressIndicator(),
        SizedBox(height: 10,),
        BottomAppBar(
          child: Container(),
        ),
        NavigationDrawer(children: []),
        ActionChip(label: Text('label')),
        FilterChip(label: Text('label'),
        onSelected: (value) {
          
        },),
        InputChip(label: Text('label')),
        Tooltip(
      message: 'I am a Tooltip',
      child: Text('Hover over the text to show a tooltip.'),
    )
      ],),
      
    );
  }
}