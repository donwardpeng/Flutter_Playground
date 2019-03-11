import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';
import './pages/product_details.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
    print(_products);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Stack(children: <Widget>[
      Column(
        children: [
          // Container(
          //   margin: EdgeInsets.all(10.0),
          //   child: ProductControl(_addProduct),
          // ),
          Expanded(child: Products(_products, deleteProduct: _deleteProduct))
        ],
      ),
      Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () {
              _addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ))
    ]);
  }
}
