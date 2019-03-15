import 'package:flutter/material.dart';

import '../product_manager.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
        },
        child: Scaffold(
          drawer: Drawer(
              child: Column(
            children: <Widget>[
              AppBar(title: Text("Choose")),
              ListTile(
                title: Text('About'),
              )
            ],
          )),
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager(),
        ));
  }
}
