import 'package:chalkboard/root_page.dart';
import 'package:flutter/material.dart';
import 'imageBoard_landscape.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

