import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteAnimationPage extends StatefulWidget {
  const FavoriteAnimationPage({super.key});

  @override
  _FavoriteAnimationPageState createState() => _FavoriteAnimationPageState();
}

class _FavoriteAnimationPageState extends State<FavoriteAnimationPage>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _animationController?.repeat(reverse: true);
    _animation = Tween(begin: 1.0, end: 13.0).animate(_animationController!)
      ..addListener(
        () {
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    _animation!.isDismissed;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: _animation?.value + _animation?.value,
                spreadRadius: _animation?.value,
                offset: Offset(_animation?.value, _animation?.value),
              ),
            ],
          ),
          child: Icon(Icons.favorite,
              color: Colors.pink.withOpacity(0.7), size: 40),
        ),
      ),
    );
  }
}