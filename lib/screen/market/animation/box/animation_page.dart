import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/animation/animation.dart';
import 'package:learning_flutter/screen/market/animation/animation_container_page.dart';
import 'package:learning_flutter/screen/market/animation/hero_page.dart';
import 'package:learning_flutter/screen/market/animation/nav_animation_page.dart';
import 'package:learning_flutter/screen/market/animation/physics_animation_page.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class AnimationApp extends StatefulWidget {
  const AnimationApp({super.key});

  @override
  State<AnimationApp> createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> {
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
  'animation_container_page',
  'animation',
  'hero',
  'nav_animation_page',
  'physics_animation_page',
];

List listWidget = [
  const AnimatedContainerApp(),
  const AnimationPage(),
  const HeroPage(),
  const Page1(),
  const PhysicsCardDragDemo(),
];

}

