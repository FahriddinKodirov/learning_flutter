import 'package:flutter/material.dart';

class FlexSpacer extends StatelessWidget {
  const FlexSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Flex(
                direction: Axis.vertical,
                children: const [Text('salom'), Text('salom'), Text('salom')]),
          ),
          const SizedBox(height: 30,),
          Row(
            children: const <Widget>[
              Text('Begin'),
              Spacer(),
              Text('Middle'),
              Spacer(flex: 4),
              Text('End'),
            ],
          )
        ],
      ),
    );
  }
}
