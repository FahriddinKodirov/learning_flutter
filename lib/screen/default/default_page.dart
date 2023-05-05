import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Flex(
                direction: Axis.horizontal,
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
