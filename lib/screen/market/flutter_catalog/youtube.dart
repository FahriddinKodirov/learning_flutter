import 'dart:io';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyOtherAppsExample extends StatelessWidget {
  const MyOtherAppsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Watch Youtube video'),
                  leading: const Icon(CommunityMaterialIcons.youtube),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=salom'),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.shop),
                  title: const Text('View in store'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => launchUrl(
                    Uri.parse(Platform.isIOS
                        ? 'https://apps.apple.com/app/id1605475549'
                        : 'https://play.google.com/store/apps/details?id=io.github.xydocs.flutter_offline_doc'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}