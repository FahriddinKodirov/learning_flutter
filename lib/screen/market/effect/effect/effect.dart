import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/effect/download_button/box/download_button.dart';
import 'package:learning_flutter/screen/market/effect/expaded_page.dart';
import 'package:learning_flutter/screen/market/effect/fotofilter_page.dart';
import 'package:learning_flutter/screen/market/effect/menu_animetion.dart';
import 'package:learning_flutter/screen/market/effect/navigator_load_page.dart';
import 'package:learning_flutter/screen/market/effect/navigator_rail.dart';
import 'package:learning_flutter/screen/market/effect/scroll_foto_page.dart';
import 'package:learning_flutter/screen/market/effect/ui_element.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class EffectPage extends StatefulWidget {
  const EffectPage({super.key});

  @override
  State<EffectPage> createState() => _EffectPageState();
}

class _EffectPageState extends State<EffectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: listTitle.length,
        itemBuilder: (context, index) {
          return  ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => listWidget[index]));
            },
            title: Text(listTitle[index]),
          );
        },
      ),
    );
  }

  list(word, widget) {
    return ListTile(
      title: Text(word),
      trailing: widget,
    );
  }

  row(word,widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: height(context)*0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(word,style: const TextStyle(fontSize: 16),), widget],
      ),
    );
  }
  
List listTitle = [
  'expaded_page',
  'fotofilter_page',
  'menu_animetion',
  'navigator_load_page',
  'navigator_tail',
  'scrol_foto_page',
  'ui_element',
  'download_button/box',
];

List listWidget = [
  const ExampleExpandableFab(),
  const ExampleInstagramFilterSelection(),
  const ExampleStaggeredAnimations(),
  const NavigatorLoad(),
  MyHomePage(),
  const ExampleParallax(),
  const ExampleDragAndDrop(),
  const ExampleCupertinoDownloadButton(),
];

}

