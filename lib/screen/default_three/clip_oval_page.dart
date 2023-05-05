import 'package:flutter/material.dart';

class OlipOvalPage extends StatelessWidget {
  const OlipOvalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              ClipOval(
                child: Image.network(
                  'https://www.kindacode.com/wp-content/uploads/2020/12/the-cat.jpg',
                  width: 300,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ClipOval(
                child: Image.network(
                  'https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ));
  }
}