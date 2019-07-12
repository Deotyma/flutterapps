import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Home_page(),
  ),
  );
}

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Wenanty Katarzyniec'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
            radius: 70.0,
          backgroundImage: AssetImage('assets/wenanty.jpg'),
        )
          Text('Wenanty Katarzyniec'
          style: TextStyle(
        fontSize: 40.0,
        color: Colors.brown.shade50,
        fontWeight: FontWeight.bold,
        fontFamily: 'Couragette',
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
                child: Text('Biographie'
                style: TextStyle(
                fontSize: 30.0,
                color: Colors.brown.shade50

    ),
    ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => biographie()),
                  );
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
                child: Text('Prière'
    style: TextStyle(
    fontSize: 30.0,
    color: Colors.brown.shade50
    ),
    ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => priere()),
                  );
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
      child: Text('Neuvenne'
    style: TextStyle(
    fontSize: 30.0,
    color: Colors.brown.shade50,
    ),),
      onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => neuvenne(),),
      );
      },
      ),
    ),
          ],
        ),
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
        backgroundColor: Colors.brown,
        title: Text("Biographie"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text ('Serviteur de Dieu, père Wenanty Katarzyniec est né le 07.10.1889 à Obydlow en Pologne. Comme enfant il été très doué et sa famille comptait qu’il resterait un maître d’école. Cependant il a décidé de devenir franciscain. Il rentre au couvent en 1907 à Lviv. Son ami est saint Maximilian Kolbe. Restant prêtre il est devenu un exemple à suivre à ces collègues. Il passait les heures au confessionnal malgré sa maladie. Il est mort le 31.03.1921 dans une opinion de sainteté. Aujourd’hui il est appelé un Charbel polonais car toute les prières à son intercession sont exécutés immédiatement, surtout s’il s’agit des problèmes financières. En ce moment un processus de béatification est ouvert.'
        style: TextStyle(
            fontSize: 20.0
            color: Colors.brown.shade900
        ),
        )
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
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Retourn'
    style: TextStyle(
    fontSize: 30.0,
    color: Colors.brown.shade50
    ),
    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class priere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Prière'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class neuvenne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}