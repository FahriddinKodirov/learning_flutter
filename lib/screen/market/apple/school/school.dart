import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/apple/school/cupirtino_sliver_nvg_bar.dart';
import 'package:learning_flutter/screen/market/apple/school/segmented_app.dart';
import 'package:learning_flutter/screen/market/apple/school/sling_segmend_app.dart';

class SchoolApp extends StatefulWidget {
  const SchoolApp({super.key});

  @override
  State<SchoolApp> createState() => _SchoolAppState();
}

class _SchoolAppState extends State<SchoolApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('School'),
      ),
      child: ListView.builder(
        itemCount: listTitle.length,
        itemBuilder: (context, index) {
          return  CupertinoListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => listWidget[index]));
            },
            title: Text(listTitle[index]),
          );
        },
      ),
    );
  }

  List listTitle = [
  'segmened_app',
  'sling_segmend',
  'cupirtino_sliver_nvg',

];

List listWidget = [
  const SegmentedControlExample(),
  const SegmentedControlApp(),
  const SliverNavBarExample()
];

}