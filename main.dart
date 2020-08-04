import 'package:chewie_app/chewie_list.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

void onPlayAudio() async {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/Date La Vuelta.mp3"),
    showNotification: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio/Video Player'),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/bihu.mp4',
                ),
                looping: true,
              ),
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                  'assets/bihu2.mp4',
                ),
                looping: true,
              ),
              RaisedButton(
                child: Text('Play music'),
                onPressed: onPlayAudio,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
