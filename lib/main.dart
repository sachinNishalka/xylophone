import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());



void playSound(int trackNumber) async{
  final player = AudioPlayer();
  await player.play(AssetSource('note$trackNumber.wav'));
}

class XylophoneApp extends StatelessWidget {

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    // padding: EdgeInsets.all(0)
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(1);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(2);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(3);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(4);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(5);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(6);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple
                  ),
                  child: Text(''),
                  onPressed: (){
                    playSound(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
