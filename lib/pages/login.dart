import 'package:flutter/material.dart';

import './main_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Screen')),
        body: Container(
          child: RaisedButton(
              child: Text('LOGIN'),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MainPage()));
              }),
          alignment: Alignment.center,
        ));
  }
}
