import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String name) {
    final player = AudioCache();
    player.play(name);
  }

  Expanded buildKey({Color color, Color colorTxt, String sound, String label}) {
    return Expanded(
      child: Container(
        child: FlatButton(
          textColor: colorTxt,
          color: color,
          padding: EdgeInsets.all(0),
          onPressed: () {
            playSound(sound);
          },
          child: Image.network(
            label,
          ),
        ),
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
              buildKey(
                color: Colors.redAccent,
                colorTxt: Colors.white,
                sound: ('note1.wav'),
                label:
                    ('https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              buildKey(
                color: Colors.deepOrange,
                colorTxt: Colors.white,
                sound: ('note2.wav'),
                label: ('deep orange'),
              ),
              buildKey(
                color: Colors.green,
                colorTxt: Colors.white,
                sound: ('note3.wav'),
                label: ('green'),
              ),
              buildKey(
                color: Colors.blue,
                colorTxt: Colors.white,
                sound: ('note4.wav'),
                label: ('blue'),
              ),
              buildKey(
                color: Colors.cyan,
                colorTxt: Colors.white,
                sound: ('note5.wav'),
                label: ('cyan'),
              ),
              buildKey(
                color: Colors.pinkAccent,
                colorTxt: Colors.white,
                sound: ('note6.wav'),
                label: ('pink Accent'),
              ),
              buildKey(
                color: Colors.red,
                colorTxt: Colors.white,
                sound: ('note7.wav'),
                label: ('red'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
