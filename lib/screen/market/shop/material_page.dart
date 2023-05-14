import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class ExampleMaterialPage extends StatelessWidget {
  const ExampleMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              const AboutDialog(),
              const AboutListTile(applicationName: 'salom'),
              const BackButtonIcon(),
               Badge(
                backgroundColor: Colors.red,
                smallSize: 22,
                largeSize: 40,
                padding: const EdgeInsets.all(1),
                alignment: AlignmentDirectional.center,
                label: const Text('data'),
                child: Container(
                  height: height(context)*0.1,
                  width: width(context)*0.3,
                  color: Colors.amber,
                ),
              ),
              MaterialBanner(
                dividerColor: Colors.amberAccent,
                shadowColor: Colors.cyanAccent,
                backgroundColor: Colors.grey[200],
                leading: const Icon(Icons.phone),
                overflowAlignment: OverflowBarAlignment .center,
                elevation: 2,
                onVisible: () {},
                content: Container(
                  color: Colors.red,
                ),
                actions: const [
                  Icon(Icons.account_circle_outlined),
                  Icon(Icons.abc_rounded)
                ],
              ),
              RawMaterialButton(
                onPressed: () {},
              ),
              const ButtonBar(
                children: [
                  Icon(Icons.abc_rounded),
                  Icon(Icons.abc_rounded),
                  Icon(Icons.abc_rounded)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
