import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:myapp/section1.dart';
import 'package:myapp/section2.dart';
import 'package:myapp/section3.dart';
import 'package:myapp/section4.dart';
import 'package:myapp/section5.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

late AudioPlayer player = AudioPlayer();

void playMusic() {
  // Create the audio player.
  player = AudioPlayer();

  // Set the release mode to keep the source after playback has completed.
  player.setReleaseMode(ReleaseMode.loop);

  // Start the player as soon as the app is displayed.
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await player.setSource(AssetSource('music.mp3'));
    await player.resume();
  });
}

class _BasePageState extends State<BasePage> {
  @override
  void initState() {
    super.initState();
    playMusic();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"), fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Section1(),
                Section2(),
                Section3(),
                Section4(),
                Section5()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
