import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(birds_flutter());

class birds_flutter extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('bird$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
             children: <Widget>[
               Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Image.asset('images/bird2.jpg'),
                     ),
                     FlatButton(
                         color: Colors.pink,
                         onPressed: (){
                           playSound(2);
                         },
                         child: Text('a lark')
                     ),
                   ],
                 ),
               ),

               Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Image.asset('images/bird3.jpg'),
                     ),
                     FlatButton(
                         color: Colors.pink,
                         onPressed: (){
                           playSound(3);
                         },
                         child: Text('a nightingale')
                     ),
                   ],
                 ),
               ),
               Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Image.asset('images/bird4.jpg'),
                     ),
                     FlatButton(
                         color: Colors.pink,
                         onPressed: (){
                           playSound(4);
                         },
                         child: Text('a tit')
                     ),
                   ],
                 ),
               );

              ]
        ),
      ),
    ),
    );
  }
}
