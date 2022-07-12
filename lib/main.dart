import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource(('note$soundNumber.wav')));
  }

  Expanded buildKey({required int soundNumber, required ButtonStyle style}){
    return Expanded(
      child: TextButton(
        style:  style,
        onPressed: () {
          playSound(soundNumber);
        }, child: const Text('1'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.red,primary: Colors.red,),soundNumber: 1),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.green,primary: Colors.green,),soundNumber: 2),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.yellow,primary: Colors.yellow,),soundNumber: 3),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.blue,primary: Colors.blue,),soundNumber: 4),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.teal,primary: Colors.teal,),soundNumber: 5),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.orange,primary: Colors.orange,),soundNumber: 6),
              buildKey(style: TextButton.styleFrom(backgroundColor: Colors.pink,primary: Colors.pink,),soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}