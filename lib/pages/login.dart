import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'dart:async';

import './main_page.dart';
import '../password_input.dart';

class LoginScreen extends StatelessWidget {
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  LoginScreen({this.analytics, this.observer});

  Future<void> _testSetCurrentScreen() async {
    await analytics.setCurrentScreen(
      screenName: 'Login Screen',
      screenClassOverride: 'Login',
    );
    print('Analytics: setCurrentScreen done');
  }

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
                Hero(
                  tag: 'GDGWindsorHeroImage',
                  child: Image.asset('assets/GDGWindsor.png'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 48.0),
                ),
                Row(children: <Widget>[Text('Username')]),
                TextField(decoration: InputDecoration(hintText: 'Username')),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 36.0),
                ),
                Row(children: <Widget>[
                  Text('Password'),
                ]),
                PasswordInput(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 48.0),
                ),
                RaisedButton(
                    child: Text('LOGIN'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _testSetCurrentScreen();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MainPage()));
                    }),
              ]),
        ));
  }
}
