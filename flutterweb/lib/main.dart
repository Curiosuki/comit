import 'package:flutter/material.dart';
import 'package:flutterweb/maintab/detailpage.dart';
import 'maintab/landingpage.dart';
import 'maintab/tab1.dart';
import 'maintab/tab2.dart';
import 'maintab/tab3.dart';
import 'maintab/tab4.dart';
import 'maintab/tab5.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/tab1': (context) => Tab1(),
        '/tab2': (context) => Tab2(),
        '/tab3': (context) => Tab3(),
        '/tab4': (context) => Tab4(),
        '/tab5': (context) => Tab5(),
        '/detailpage': (context) => DetailPage(),

      },
    );
  }
}

