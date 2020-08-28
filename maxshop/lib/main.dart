
import 'package:flutter/material.dart';
import 'package:maxshop/providers/products.dart';
import 'package:maxshop/screens/product_detail_screen.dart';
import 'package:maxshop/screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

import 'models/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider 
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple
        ),
        home: ProductScreenOverview(),
        routes: {
         // ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          '/productDetailScreen': (ctx) => ProductDetailScreen(),

        },
      ),
    );
  }
}






