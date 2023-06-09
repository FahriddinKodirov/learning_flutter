import 'package:flutter/material.dart';

class InterectiveViewPage extends StatelessWidget {
  const InterectiveViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(200.0),
      minScale: 0.1,
      maxScale: 1.6,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.orange, Colors.red],
            stops: <double>[0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
