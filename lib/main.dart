import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void AudioName(int music) {
    final player = AudioPlayer();
    player.setSourceAsset('music/music$music.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("xylophone"),
          centerTitle: true,
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text(''),
                onPressed: () {
                  AudioName(1);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(''),
                onPressed: () {
                  AudioName(2);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
                child: const Text(''),
                onPressed: () {
                  AudioName(3);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(''),
                onPressed: () {
                  AudioName(4);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text(''),
                onPressed: () {
                  AudioName(5);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(''),
                onPressed: () {
                  AudioName(6);
                },
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text(''),
                onPressed: () {
                  AudioName(7);
                },
              ),
            ),
          ]),
        ),
        // drawer: const Drawer(),
      ),
    );
  }
}
