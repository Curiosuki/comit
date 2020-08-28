import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realestate/landingpage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RealEstate',
      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.transparent,
//      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
      },
    );
  }
}

