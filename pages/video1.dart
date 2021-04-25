import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Video1());
}

class Video1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Example',
      home: VideoExample(),
    );
  }
}

class VideoExample extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoExample> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network("https://ed-en.pro/video/preview/1612258376Arduino trailer main.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(217, 164, 32, 100),
        title: Text(
          'ED-EN.PRO',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: Center(
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                  playerController,
                )
                    : Container()),
              )))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(217, 164, 32, 100),

        onPressed: () {
          createVideo();
          playerController.play();
        },
        child: Icon(playerController == null ? Icons.play_arrow : Icons.pause),

      ),
      bottomSheet: Padding(padding: EdgeInsets.only(bottom: 150.0),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

