
import 'package:flutter/material.dart';
import 'package:maxshop/providers/products.dart';
import 'package:maxshop/widgets/product_grid.dart';
import 'package:provider/provider.dart';


class ProductScreenOverview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Shopping App'),
        ),
        body: ProductGrid()
    );
  }

}
