import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(),
      home: new FormPage(),

    );
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      performLogin();
    }
  }

  void performLogin() {
    final snackbar = new SnackBar(
      content: new Text("Email : $_email, password : $_password"),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: scaffoldKey,
        body: Column(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 120,
                color: Colors.teal,
                child: Center(child: Text('Mon formulaire très simple'
                    style: new TextStyle(color: Colors.white)),),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Form(
                key: formKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(labelText: "Nom"),
                      onSaved: (val) => _email = val,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(labelText: "Prènom"),
                      onSaved: (val) => _email = val,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(labelText: "Email"),
                      validator: (val) =>
                      !val.contains('@') ? 'Invalid Email' : null,
                      onSaved: (val) => _email = val,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(labelText: "Mot de passe"),
                      validator: (val) =>
                      val.length < 6 ? 'Mot de passe trop court' : null,
                      onSaved: (val) => _password = val,
                      obscureText: true,
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    Container(
                      width: 200.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0)
    ),


                      child: new FlatButton(
                        child: new Text(
                          "valider",
                          style: new TextStyle(color: Colors.white),
                        ),
                        color: Colors.teal,
                        onPressed: _submit,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 85.0,),
            ClipPath(
              clipper: WaveClipperTwo(reverse: true),
              child: Container(
                height: 120,
                color: Colors.teal,
                child: Center(child: Text("")),
              ),
            ),
          ],
        ));
  }
}
