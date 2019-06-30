import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: perePage(),
  ),
);

class perePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade900,
        title: Text('Les pères du désert'),
      ),
      body: Pere(),
    );
  }
}

class Pere extends StatefulWidget {
  @override
  _PereState createState() => _PereState();
}
int PereNumber = 1;
class _PereState extends State<Pere> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            PereNumber = Random().nextInt(20) + 1;
          });
        },
        child: Image.asset('images/PDD$PereNumber.jpg'),
      ),
    );
  }
}
