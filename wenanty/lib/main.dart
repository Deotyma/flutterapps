import 'package:flutter/material.dart';

void main()

  {
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wenanty Katarzyniec',
        theme: ThemeData(
          primaryColor: Colors.brown,
        ) ,
        home: Home_Page (),
    ),
    );
  }

  class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        title: Text('Wenanty Katarzyniec'),
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/wenanty.jpg'),
              ),
        Text(
        'Wenanty Katarzyniec',
        style: TextStyle(
          fontFamily: 'Courabette',
          color: Colors.brown.shade50,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ),
      ),
          SizedBox(
            height: 30.0,
            width: 150.0,
          ),
          Container(
            width: 250.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.9],
                colors: [
                  Colors.brown.shade300,
                  Colors.brown.shade700,
                ],
              ),
            ),
            child: FlatButton(
              child: Text(
                'Biographie',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              textColor: Colors.white,
              color: Colors.transparent,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              onPressed: () {

              }
            ),

      ),
              SizedBox(
                height: 30.0,
                width: 150.0,
              ),
              Container(
                width: 250.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Colors.brown.shade300,
                      Colors.brown.shade700,
                    ],
                  ),
                ),
                child: FlatButton(
                  child: Text(
                    'Prière',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Colors.transparent,
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                  },
                ),
              ),
      SizedBox(
      height: 30.0,
      width: 150.0,

    ),
      Container(
      width: 250.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.9],
          colors: [
            Colors.brown.shade300,
            Colors.brown.shade700,
          ],
        ),
      ),
      child: FlatButton(
        child: Text(
          'Neuvaine',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        textColor: Colors.white,
        color: Colors.transparent,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        onPressed: () {
        },
      ),
    ),
            ]
      )
          ),
    );
  }
}

class biographie extends StatelessWidget {
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

