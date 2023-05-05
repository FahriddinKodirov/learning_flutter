import 'package:flutter/material.dart';

class ClipPathPage extends StatefulWidget {
  const ClipPathPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ClipPathPage> createState() => _ClipPathPageState();
}

class _ClipPathPageState extends State<ClipPathPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          
          ClipPath(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.red,
            ),
            clipper: CustomClipPath(),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-0.5, -0.6),
                radius: 0.15,
                colors: <Color>[
                  Colors.amber,
                  Color(0xFF111133),
                ],
                stops: <double>[0.9, 1.0],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
