import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: XylophoneApp(),
      ),
    );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void SoundPlay(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildkey({required Color color, required int SoundNum} ) {
     return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            shape:  RoundedRectangleBorder(),
            backgroundColor: color),
        onPressed: () {
          SoundPlay(SoundNum);
        },
        child:  Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            buildkey(color: const Color.fromARGB(255, 235, 115, 106), SoundNum: 1),
            buildkey(color: const Color.fromARGB(255, 215, 243, 33), SoundNum: 2),
            buildkey(color: const Color.fromARGB(255, 70, 195, 74), SoundNum: 3),
            buildkey(color: Colors.amber, SoundNum: 4),
            buildkey(color: Colors.red, SoundNum: 5),
            buildkey(color: const Color.fromARGB(255, 0, 153, 255), SoundNum: 6),
            buildkey(color: Colors.pink, SoundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
