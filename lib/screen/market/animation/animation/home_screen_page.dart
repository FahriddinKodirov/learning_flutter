import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? _controller2;
  Animation<double>? _animation;
  Animation<double>? _animation2;

  @override
  void initState() {
    super.initState();

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeOut))
          ..addListener(() {
            setState(() {});
          });

    _animation2 = Tween<double>(begin: 0, end: -50).animate(CurvedAnimation(
        parent: _controller2!, curve: Curves.fastLinearToSlowEaseIn));

      _controller?.forward();
      _controller2?.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    _controller2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar(),
      body: Stack(
        children: [
          // background color
          backgroundColor(),

          /// ListView
          ListView(
            physics:
                const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 5.5),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
              card('Example example example', 'Example', Icons.favorite,
                  RouteWhereYouGo()),
            ],
          ),
        ],
      ),
    );
  }

   appBar() {
    double _w = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: const Size(double.infinity, kToolbarHeight),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
        child: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white.withOpacity(.5),
          elevation: 0,
          title: Text(
            '  Your App\'s name',
            style: TextStyle(
              fontSize: _w / 17,
              color: Colors.black.withOpacity(.7),
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            IconButton(
              tooltip: 'Settings',
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(Icons.settings, color: Colors.black.withOpacity(.7)),
              onPressed: () {
                HapticFeedback.lightImpact();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RouteWhereYouGo();
                    },

),
                );
              },
            ),
            const Text('  '),
          ],
        ),
      ),
    );
  }

  Widget card(String title, String subtitle, IconData icon, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation!.value,
      child: Transform.translate(
        offset: Offset(0, _animation2!.value),
        child: Container(
          height: _w / 2.3,
          width: _w,
          padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              HapticFeedback.lightImpact();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.2),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                      color: Colors.white.withOpacity(.1), width: 1)),
              child: Padding(
                padding: EdgeInsets.all(_w / 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: _w / 3,
                      width: _w / 3,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: _w / 10,
                      ),
                    ),
                    SizedBox(width: _w / 40),
                    SizedBox(
                      width: _w / 2.05,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _w / 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 1,
                            ),
                          ),
                          Text(
                            subtitle,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withOpacity(1),
                              fontSize: _w / 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Tap to know more',
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _w / 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class backgroundColor extends StatelessWidget {
  const backgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff7DDFFF),
            Color(0xffB09EFF),
            Color(0xffED92EF),
            Color(0xffF9B1D0),
            Color(0xffE8B8E0),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}

class RouteWhereYouGo extends StatelessWidget {
  const RouteWhereYouGo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: const Text(
          'EXAMPLE  PAGE',
        ),
      ),
    );
  }
}