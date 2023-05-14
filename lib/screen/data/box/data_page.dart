import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/data/future_page.dart';
import 'package:learning_flutter/screen/data/internet/intermet/internet_page.dart';
import 'package:learning_flutter/screen/data/load_page.dart';
import 'package:learning_flutter/screen/data/stream_page.dart';
import 'package:learning_flutter/screen/data/text_page.dart';
import 'package:learning_flutter/screen/data/video_page.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Page'),),
      body: ListView.builder(
        itemCount: listTitle.length,
        itemBuilder: (context, index) {
          return  ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => listWidget[index]));
            },
            title: Text(listTitle[index]),
          );
        },
      ),
    );
  }

  list(word, widget) {
    return ListTile(
      title: Text(word),
      trailing: widget,
    );
  }

  row(word,widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(word,style: const TextStyle(fontSize: 16),), widget],
      ),
    );
  }

  List listTitle = [
  'internet',
  'future_page',
  'load_page',
  'stream_page',
  'video_page',
  'text_page',
  'text_family',
];

List listWidget = [
  const InternetPage(),
  const FuturePage(),
  const LoadView(),
  const StreamPage(),
  const VideoPlayerScreen(),
  const TextPage()
];

}