import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: SizedBox.expand(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Return to last screen'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ));
  }
}
