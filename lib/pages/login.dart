import 'package:flutter/material.dart';

import './main_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Screen')),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[Text('Username')]),
                TextField(decoration: InputDecoration(hintText: 'Username')),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 36.0),
                ),
                Row(children: <Widget>[
                  Text('Password'),
                ]),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 36.0),
                ),
                RaisedButton(
                    child: Text('LOGIN'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MainPage()));
                    }),
              ]),
        ));
  }
}
