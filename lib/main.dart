import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());



void playSound(int trackNumber) async{
  final player = AudioPlayer();
  await player.play(AssetSource('note$trackNumber.wav'));
}

Widget playButton({required final btnColor, required int soundNumber}){
  return (Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: btnColor,
        // padding: EdgeInsets.all(0)
      ),
      child: Text(''),
      onPressed: (){
        playSound(soundNumber);
      },
    ),
  )
  );
}

class XylophoneApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                playButton(btnColor: Colors.red, soundNumber: 1),
                playButton(btnColor: Colors.orange, soundNumber: 2),
                playButton(btnColor: Colors.yellow, soundNumber: 3),
                playButton(btnColor: Colors.green, soundNumber: 4),
                playButton(btnColor: Colors.blue, soundNumber: 5),
                playButton(btnColor: Colors.indigo, soundNumber: 6),
                playButton(btnColor: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
