import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/market/shop/chekbox_data_table.dart';
import 'package:learning_flutter/screen/market/shop/custom_scroll_view.dart';
import 'package:learning_flutter/screen/market/shop/material_page.dart';
import 'package:learning_flutter/screen/market/shop/delete_page.dart';
import 'package:learning_flutter/screen/market/shop/drawer_page.dart';
import 'package:learning_flutter/screen/market/shop/tab_bar_demo.dart';
import 'package:learning_flutter/screen/market/shop/shortcuts_page.dart';
import 'package:learning_flutter/screen/market/shop/expansion_panel_page.dart';
import 'package:learning_flutter/screen/market/shop/focus_traversal_group_page.dart';
import 'package:learning_flutter/screen/market/shop/listener_page.dart';
import 'package:learning_flutter/screen/market/shop/menu_ancher.dart';
import 'package:learning_flutter/screen/market/shop/navigation_bar.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class Defaut2Page extends StatefulWidget {
  const Defaut2Page({super.key});

  @override
  State<Defaut2Page> createState() => _Defaut2PageState();
}

class _Defaut2PageState extends State<Defaut2Page> {
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
  'custom_scroll_view',
  'material_page',
  'delete_page',
  'drawer_page',
  'Tab_bar_demo',
  'shortcuts_page',
  'ChekboxDataTable',
  'shortcuts_page',
  'expansion_panel_page',
  'focus_traversal_group_page',
  'listener_page',
  'menu_anchar',
  'navigation_bar',
];

List listWidget = [
  const CustomScrollViewPage(),
  const ExampleMaterialPage(),
  const DeletePage(),
  const DrawerPage(),
  const TabBarDemo(),
  const ShortcutsPage(),
  const ChekboxDataTable(),
  const ShortcutsPage(),
  const ExpansionPanelPage(),
  const FocusTraversalGroupPage(),
  const ListenerPage(),
  const MyCascadingMenu(),
  const NavigationBarPage(),
];

}

