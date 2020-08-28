import 'package:flutter/material.dart';
import 'package:maxshop/providers/products.dart';
import 'package:maxshop/widgets/product_Item.dart';
import 'package:provider/provider.dart';



class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;

    return GridView.builder(
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
          products[i].id,
          products[i].title,
          products[i].imgUrl
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),);
  }
}
