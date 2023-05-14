import 'package:flutter/material.dart';
import 'package:learning_flutter/screen/data/internet/delete_data_page.dart';
import 'package:learning_flutter/screen/data/internet/get_api_page.dart';
import 'package:learning_flutter/screen/data/internet/isolate_page.dart';
import 'package:learning_flutter/screen/data/internet/send_data.dart';
import 'package:learning_flutter/screen/data/internet/update_date_page.dart';
import 'package:learning_flutter/screen/data/internet/web_socket_page.dart';
import 'package:learning_flutter/utils/my_utils.dart';

class InternetPage extends StatefulWidget {
  const InternetPage({super.key});

  @override
  State<InternetPage> createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
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
      padding: EdgeInsets.symmetric(horizontal: height(context)*0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(word,style: const TextStyle(fontSize: 16),), widget],
      ),
    );
  }

  List listTitle = [
  'delete_page',
  'get_api_page',
  'isolate_page',
  'send_data',
  'update_data',
  'web_socket_page',

];

List listWidget = [
  const DeleteDataPage(),
  const GetApiPage(),
  const IsolatePage(),
  const SendDataPage(),
  const UpdateDatePage(),
  const WebSocketPage()
];

}