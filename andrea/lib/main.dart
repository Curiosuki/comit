import 'package:andrea/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF60984),
        accentColor: Color(0xFFF60984),
        iconTheme: IconThemeData(
          color: Color(0xFFF60984)
        )
      ),
      home: SignInPage(),
    );
  }
}


