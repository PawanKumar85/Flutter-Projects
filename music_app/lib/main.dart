import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyPlay(),
      ),
    );
  }
}

class MyPlay extends StatelessWidget {
  const MyPlay({super.key});

  void play(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded myContainer(int i, Color name) {
    return Expanded(
      child: Container(
        height: 100,
        color: name,
        child: InkWell(
          onTap: () {
            play(i);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        myContainer(1, Colors.red),
        myContainer(2, Colors.orange),
        myContainer(3, Colors.yellow),
        myContainer(4, Colors.green),
        myContainer(5, Colors.teal),
        myContainer(6, Colors.blue),
        myContainer(7, Colors.indigo),
      ],
    );
  }
}
