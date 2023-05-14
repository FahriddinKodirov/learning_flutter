import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/data/box/data_page.dart';
import 'package:learning_flutter/screen/home/box/home_page.dart';
import 'package:learning_flutter/screen/market/market_page.dart';
import 'package:learning_flutter/screen/school/school/school_page.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int index = 0;
  final List _list = const [
    HomePage(),
    MarketPage(),
    SchoolPage(),
    DataPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: _list[index],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 8,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          fixedColor: Colors.black,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_saver_on_rounded), label: ''),
          ]),
    );
  }
}
