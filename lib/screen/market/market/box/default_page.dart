import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/market/indexed_stack_page.dart';
import 'package:learning_flutter/screen/market/market/textfield_page.dart';
import 'package:learning_flutter/screen/market/market/unconstrainedbox_page.dart';
import 'package:learning_flutter/screen/market/market/gesture_detector_page.dart';
import 'package:learning_flutter/screen/market/market/wrap_page.dart';
import 'package:learning_flutter/screen/market/market/olip_oval_page.dart';
import 'package:learning_flutter/screen/market/market/clip_path_page.dart';
import 'package:learning_flutter/screen/market/market/interective_view_page.dart';
import 'package:learning_flutter/screen/market/market/language.dart';
import 'package:learning_flutter/screen/market/market/draggable_scrollable_sheet_page.dart';
import 'package:learning_flutter/screen/market/market/font_future_page.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class DefautPage extends StatefulWidget {
  const DefautPage({super.key});

  @override
  State<DefautPage> createState() => _DefautPageState();
}

class _DefautPageState extends State<DefautPage> {
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
  'indexed_stack',
  'textfield_page',
  'inconstrainedbox_page',
  'gestureDetector_page',
  'wrap_page',
  'olip_oval_page',
  'clip_path_page',
  'interective_viewPage',
  'language',
  'draggable_scrollablesheet_page',
  'FontPage',
];

List listWidget = [
  const IndexedStackPage(),
  const TextFieldPage(),
  const UnconstrainedBoxPage(),
  const GestureDetectorPage(),
  const WrapPage(),
  const OlipOvalPage(),
  const ClipPathPage(),
  const InterectiveViewPage(),
  const DemoPage(),
  const DraggableScrollableSheetPage(),
  const FontPage(),
];

}

