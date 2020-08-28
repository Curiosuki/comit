import 'package:flutter/material.dart';
import 'package:maxshop/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;

  ProductItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
           // Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: id);

            Navigator.pushNamed(context, '/productDetailScreen', arguments: id);
          },
          child: Image.network(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
