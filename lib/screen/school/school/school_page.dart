import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/school/aspect_retio_page.dart';
import 'package:learning_flutter/screen/school/autocomplete_page.dart';
import 'package:learning_flutter/screen/school/custom_scroll_view.dart';
import 'package:learning_flutter/screen/school/customulti_child_layout.dart';
import 'package:learning_flutter/screen/school/fittedox_page.dart';
import 'package:learning_flutter/screen/school/flex_spacer_page.dart';
import 'package:learning_flutter/screen/school/flexible_page.dart';
import 'package:learning_flutter/screen/school/flow_menu_page.dart';
import 'package:learning_flutter/screen/school/fractionally_sizedbox.dart';
import 'package:learning_flutter/screen/school/navigator_rail_page.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
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
  'aspect_retio_page',
  'autocomplete_page',
  'custom_scroll_view',
  'customulti_child_layout',
  'fittedbox_page',
  'flex_spacer_page',
  'flexible_page',
  'flow_menu_page',
  'fractionally_sizedbox',
  'navigator_rail_page',
];

List listWidget = [
  const AspectRatioPage(),
  const AutocompleteBasicPage(),
  const CustomScrollViewTwoPage(),
  const ExampleWidget(),
  const FittedboxPage(),
  const FlexSpacer(),
  const FlexiblePage(),
  const FlowMenu(),
  const FractionallySizedBoxPage(),
  const NavigatorRailPage(),

];

}