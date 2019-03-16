import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int index;

  ProductDetails(this.title, this.imageUrl, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: SizedBox.expand(
          child: Column(
            children: <Widget>[
              Hero(
                  tag: 'hero_product_details' + index.toString(),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(128.0),
                    child: Image.asset(imageUrl),
                  )),
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
        ));
    // );
  }
}
