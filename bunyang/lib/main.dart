
import 'dart:collection';
import 'package:bunyang/screens/detail_views/detail_view.dart';
import 'package:bunyang/screens/detail_views/location_view.dart';
import 'package:bunyang/screens/login_page.dart';
import 'package:bunyang/screens/menu_views/chat_lists.dart';
import 'package:bunyang/screens/menu_views/home_view.dart';
import 'package:bunyang/screens/menu_views/profile_view.dart';
import 'package:bunyang/screens/menu_views/wish_lists.dart';
import 'package:bunyang/screens/onboard_page.dart';
import 'package:bunyang/screens/policy_page.dart';
import 'package:bunyang/screens/signup_page.dart';
import 'package:bunyang/screens/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/onboard': (context) => OnBoardPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/contract': (context) => Policy(),
        '/homeview': (context) => HomeView(),
        '/detailview': (context) => DetailView(),
        '/locationview': (context) => LocationView(),
        //'/mapview': (context) => MapView(),
        '/profileview': (context) => ProfileView(),
        '/chatlists': (context) => ChatLists(),
        '/wishlists': (context) => WishLists(),


      },
    );
  }
}
