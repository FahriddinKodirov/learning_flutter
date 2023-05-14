import 'package:flutter/cupertino.dart';

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      header: const Text('list_app',style: TextStyle(fontSize: 18,),),
      children: <CupertinoListTile>[
        CupertinoListTile(
          title: const Text('Open pull request'),
          leading: Container(
            width: double.infinity,
            height: double.infinity,
            color: CupertinoColors.activeGreen,
          ),
          trailing: const CupertinoListTileChevron(),
          onTap: () => Navigator.of(context).push(
            CupertinoPageRoute<void>(
              builder: (BuildContext context) {
                return const _SecondPage(text: 'Open pull request');
              },
            ),
          ),
        ),
        CupertinoListTile(
          title: const Text('Push to master'),
          leading: Container(
            width: double.infinity,
            height: double.infinity,
            color: CupertinoColors.systemRed,
          ),
          additionalInfo: const Text('Not available'),
        ),
        CupertinoListTile(
          title: const Text('View last commit'),
          leading: Container(
            width: double.infinity,
            height: double.infinity,
            color: CupertinoColors.activeOrange,
          ),
          additionalInfo: const Text('12 days ago'),
          trailing: const CupertinoListTileChevron(),
          onTap: () => Navigator.of(context).push(
            CupertinoPageRoute<void>(
              builder: (BuildContext context) {
                return const _SecondPage(text: 'Last commit');
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}