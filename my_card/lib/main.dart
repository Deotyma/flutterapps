import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body:SafeArea (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/rose.jpg'),
                ),
              Text(
                  'Ewa Kadziolka',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              Text(
                  'FLUTTER DEVELOPPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.lightBlue.shade100,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox (
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.lightBlue.shade50
                ),
              )
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,
                  ),
                  child: ListTile(
                     leading: Icon(
                       Icons.phone,
                       color: Colors.lightBlue,
                     ),
                    title: Text(
                      '01 45 76 55 21',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.lightBlue.shade900,
                      ),
                    )
                  ),
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,
                  ),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.lightBlue,
                    ),
                    title: Text(
                      'ewakalista@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.lightBlue.shade900,
                      ),
                    )
                ),
              ),
            ],
          ),
          ),
        ),
      );
  }
}
