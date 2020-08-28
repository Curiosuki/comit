import 'package:flutter/material.dart';
import 'package:testmaker/full_analysis.dart';
import 'package:provider/provider.dart';
import 'package:testmaker/models/repository.dart';
import 'package:testmaker/lectureScreen.dart';

void main() {
  runApp(
   ChangeNotifierProvider(
     create: (_) => Repository(),
     child: MyApp(),
   ),
  );
}

class MyApp extends StatelessWidget {
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
        '/': (context) => FullAnalysis(),
        '/lectureScreen': (context) => LectureScreen(),

      },
    );
  }
}
