// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class TvScreen extends StatefulWidget {
  const TvScreen({super.key});

  @override
  State<TvScreen> createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  FlickManager flickManager = FlickManager(
    videoPlayerController:
        VideoPlayerController.network('https://youtu.be/wtfN1yN6zbo'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Flutter Tv Screen'),
        centerTitle: true,
      ),
      body: Container(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager),
        ),
      ),
    );
  }
}
