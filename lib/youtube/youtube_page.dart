import 'package:flutter/material.dart';
import 'package:learning_flutter/youtube/youtube_player.dart';
import 'package:youtube_api/youtube_api.dart';


class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  static String key = "AIzaSyAe7Oxvsjrz0AzKAjGZxMbF4RyBMoedC5E";

  YoutubeAPI youtube = YoutubeAPI(key);
  List<YouTubeVideo> videoResult = [];

  Future<void> callAPI() async {
    String query = "Misharyy";
    videoResult = await youtube.search(
      query,
      order: 'relevance',
      videoDuration: 'any',
    );
    videoResult = await youtube.nextPage();
    print('videoResult:  $videoResult');
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callAPI();
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Youtube API'),
      ),
      body: ListView(
        children: videoResult.map<Widget>(listItem).toList(),
      ),
    );
  }

  Widget listItem(YouTubeVideo video) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7.0),
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => YoutubePlayerExample(yuotubeUrl: video.url,)));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.network(
                  video.thumbnail.small.url ?? '',
                  width: 120.0,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      video.title,
                      softWrap: true,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        video.channelTitle,
                        softWrap: true,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      video.url,
                      softWrap: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}