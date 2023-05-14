import 'package:flutter/cupertino.dart';
import 'package:learning_flutter/screen/market/apple/data/tab_bar.dart';
import 'package:learning_flutter/screen/market/apple/home/home/home_app.dart';
import 'package:learning_flutter/screen/market/apple/market/market_app.dart';
import 'package:learning_flutter/screen/market/apple/school/school.dart';

class TabScaffoldApp extends StatelessWidget {
  const TabScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TabScaffoldExample(),
    );
  }
}

class TabScaffoldExample extends StatefulWidget {
  const TabScaffoldExample({super.key});

  @override
  State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
}

class _TabScaffoldExampleState extends State<TabScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.archivebox_fill),
            label: 'Data',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return listWidget[index];
      },
    );
  }
  List listWidget = const [
     HomeApp(),
     MarketApp(),
     SchoolApp(),
     CupertinoTabBarExample(),
  ];
}
