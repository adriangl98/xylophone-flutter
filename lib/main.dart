import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    //always specify the type of input you expect!
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}) {
    //dont forget {} brackets when using specific input types like Color
    return Expanded(
      //return the type of code that you want, usually the parent bracket of everything underneath
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(num);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(color: Colors.red, num: 1),
                  buildKey(color: Colors.yellow, num: 2),
                  buildKey(color: Colors.blue, num: 3),
                  buildKey(color: Colors.green, num: 4),
                  buildKey(color: Colors.teal, num: 5),
                  buildKey(color: Colors.purple, num: 6),
                  buildKey(color: Colors.orange, num: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
