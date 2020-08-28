import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Quicksand',
          //primarySwatch: Colors.purple,
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
          ),
        accentColor: Colors.blueAccent,
        unselectedWidgetColor: Colors.white
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}

