import 'dart:ui';
import 'package:flutter/material.dart';

final TextStyle titleStyle = TextStyle(
  fontSize: 18,
  fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
  color: Colors.blueGrey[600],
);

class FontPage extends StatelessWidget {
  const FontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(flex: 5),
            Text('regular numbers have their place:', style: titleStyle),
            const Text('The 1972 cup final was a 1-1 draw.',
                style: TextStyle(
                  fontFamily: 'Cardo',
                  fontSize: 24,
                )),
            const Spacer(),
            Text('but old-style figures blend well with lower case:',
                style: titleStyle),
            const Text('The 1972 cup final was a 1-1 draw.',
                style: TextStyle(
                    fontFamily: 'Cardo',
                    fontSize: 24,
                    fontFeatures: <FontFeature>[
                      FontFeature.caseSensitiveForms()
                    ])),
            const Spacer(),
            const Divider(),
            const Spacer(),
            Text('fractions look better with a custom ligature:',
                style: titleStyle),
            const Text('Add 1/2 tsp of flour and stir.',
                style: TextStyle(
                    fontFamily: 'Milonga',
                    fontSize: 24,
                    fontFeatures: <FontFeature>[
                      FontFeature.alternativeFractions()
                    ])),
            const Spacer(),
            const Divider(),
            const Spacer(),
            Text('multiple stylistic sets in one font:', style: titleStyle),
            const Text('Raleway Dots',
                style: TextStyle(fontFamily: 'Raleway Dots', fontSize: 48)),
            Text('Raleway Dots',
                style: TextStyle(
                  fontFeatures: <FontFeature>[FontFeature.stylisticSet(1)],
                  fontFamily: 'Raleway Dots',
                  fontSize: 48,
                )),
            const Spacer(flex: 5),
            const Text('salom',
                style: TextStyle(
                  fontFamily: 'RobotoFlex',
                  fontSize: 18,
                  fontVariations: [
                    FontVariation('wght', 1000),
                    FontVariation('wdth', 118)
                  ],
                )),
            const DefaultTextStyle(
              style: TextStyle(),
              child: Text('salom'),
            ),
            const AnimatedDefaultTextStyle(
              duration: Duration(),
              style: TextStyle(),
              child: Text(''),
            ),
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' world!'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
