import 'package:flutter/material.dart';

class CustomScrollViewTwoPage extends StatefulWidget {
  const CustomScrollViewTwoPage({super.key});

  @override
  State<CustomScrollViewTwoPage> createState() =>
      _CustomScrollViewTwoPageState();
}

class _CustomScrollViewTwoPageState extends State<CustomScrollViewTwoPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.amber,
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Center(child: Text('SliverAppBar',style: TextStyle(color: Colors.black),)),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
