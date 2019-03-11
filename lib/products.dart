import 'package:flutter/material.dart';

import './pages/product_details.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return InkWell(
        onTap: () {
          print('tag = ' + 'hero_product_details' + index.toString());
          Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ProductDetails(
                  products[index]['title'], products[index]['image'], index),
            ),
          ).then((bool value) {
            if (value) {
              deleteProduct(index);
            }
          });
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'hero_product_details' + index.toString() ,
                child: Image.asset(products[index]['image']),
              ),
              Text(products[index]['title']),
            ],
          ),
        ));
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Container();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }
}
