import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wenanty Katarzyniec',
      theme: ThemeData(
        primaryColor: Colors.brown,
      ) ,
      home: bibliographie()
  ),
  );
}
class bibliographie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text('Wenanty Katarzyniec'),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Wenanty Katarzyniec',
                style: TextStyle(
                  fontFamily: 'Courabette',
                  color: Colors.brown.shade50,
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],

          ),
      ),
    );
  }
}
