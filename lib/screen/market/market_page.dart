import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/animation/box/animation_page.dart';
import 'package:learning_flutter/screen/market/apple/tab_box/tab_bar_app.dart';
import 'package:learning_flutter/screen/market/market/box/default_page.dart';
import 'package:learning_flutter/screen/market/shop/box/default2_page.dart';
import 'package:learning_flutter/screen/market/effect/effect/effect.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Market'),),
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
  'animation',
  'apple',
  'effect',
  'market',
  'shop',
];

List listWidget = [
  const AnimationApp(),
  const TabScaffoldApp(),
  const EffectPage(),
  const DefautPage(),
  const Defaut2Page(),

];

}