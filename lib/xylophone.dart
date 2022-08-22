import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            rowContainer(Colors.red, '1.mp3', 'A'),
            rowContainer(Colors.yellow, '2.mp3', 'B'),
            rowContainer(Colors.brown, '3.mp3', 'C'),
            rowContainer(Colors.white, '4.mp3', 'D'),
            rowContainer(Colors.green, '5.mp3', 'E'),
            rowContainer(Colors.blueGrey, '6.mp3', 'F'),
            rowContainer(Colors.blue, '7.mp3', 'G'),
            rowContainer(Colors.pink, '8.mp3', 'H'),
          ],
        ),
      ),
    );
  }

  Widget rowContainer(Color color, String music, String text) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final audioPlayer = AudioPlayer();
          audioPlayer.play(AssetSource(music));
        },
        child: Container(
          height: 80,
          width: double.infinity,
          color: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                height: 20,
                width: 20,
              ),
              Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // const SizedBox(
              //   width: 20,
              // ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
