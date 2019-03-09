import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetails extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetails(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(true);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Product Details'),
            ),
            body: SizedBox.expand(
              child: Column(
                children: <Widget>[
                  Image.asset(imageUrl),
                  Text(title),
                  OutlineButton(
                    child: Text('Delete from List'),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                  RaisedButton(
                    child: Text('Return to last screen'),
                    onPressed: () => Navigator.pop(context, false),
                  ),
                ],
              ),
            )));
  }
}
