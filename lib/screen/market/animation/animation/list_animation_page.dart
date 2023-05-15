import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListAnimationPage extends StatefulWidget {
  const ListAnimationPage({super.key});

  @override
  _ListAnimationPageState createState() => _ListAnimationPageState();
}

class _ListAnimationPageState extends State<ListAnimationPage> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('VIEW ANIMATING GRIDVIEW'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridView2()),
            );
          },
        ),
      ),
    );
  }
}

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    return Scaffold(
      appBar: AppBar(
          title: const Text("Go Back"),
          centerTitle: true,
          brightness: Brightness.dark),
      body: AnimationLimiter(
        child: GridView.count(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(_w / 60),
          crossAxisCount: columnCount,
          children: List.generate(
            30,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: columnCount,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  scale: 1.5,
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: _w / 30, left: _w / 60, right: _w / 60),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}