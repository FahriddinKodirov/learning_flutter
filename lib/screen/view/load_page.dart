import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LoadView extends StatelessWidget {
  const LoadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CachedNetworkImage(
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: 'https://picsum.photos/250?image=9',
          ),
        ),
    );
  }
}