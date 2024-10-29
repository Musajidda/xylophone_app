import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
const MaterialApp(
  debugShowCheckedModeBanner: false,
  home:XylophoneApp() ,
)
  );

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void SoundPlay(int num){
     final player = AudioPlayer();
                     player.play(AssetSource('note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: Colors.red),
                  onPressed: () {
                   SoundPlay(1);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: Colors.green),
                  onPressed: () {
                   SoundPlay(2);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: Colors.blue),
                  onPressed: () {
                   SoundPlay(3);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: const Color.fromARGB(255, 185, 255, 7)),
                  onPressed: () {
                   SoundPlay(4);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: const Color.fromARGB(255, 255, 7, 214)),
                  onPressed: () {
                   SoundPlay(5);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: const Color.fromARGB(255, 255, 7, 44)),
                  onPressed: () {
                   SoundPlay(6);
                  },
                  child: const Text('Click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                   style: TextButton.styleFrom(shape: const RoundedRectangleBorder(),backgroundColor: Colors.amber),
                  onPressed: () {
                   SoundPlay(7);
                  },
                  child: const Text('Click me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
