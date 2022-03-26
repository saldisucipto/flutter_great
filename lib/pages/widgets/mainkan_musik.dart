import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MainkanMusik extends StatefulWidget {
  const MainkanMusik({Key? key}) : super(key: key);

  @override
  State<MainkanMusik> createState() => _MainkanMusikState();
}

class _MainkanMusikState extends State<MainkanMusik> {
  String? durasi = "00:00:00";
  AudioPlayer? audioPlayer;

  _MainkanMusikState() {
    audioPlayer = AudioPlayer();
    audioPlayer!.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer!.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer!.play(url);
  }

  void pauseSound() async {
    await audioPlayer!.pause();
  }

  void stopSound() async {
    await audioPlayer!.stop();
  }

  void resumeSound() async {
    await audioPlayer!.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              playSound("url");
            },
            child: const Text("Play"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Pause"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Stop"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Resume"),
          ),
          Text(
            durasi!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )
        ],
      )),
    );
  }
}
