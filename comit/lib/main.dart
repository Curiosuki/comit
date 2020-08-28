import 'package:comit/screens/chat_views/chat_page.dart';
import 'package:comit/screens/chat_views/chat_lists.dart';
import 'package:comit/screens/profile_page.dart';
import 'package:comit/screens/register_seller_views/registerseller1.dart';
import 'package:comit/screens/register_seller_views/registerseller2.dart';
import 'package:comit/screens/register_seller_views/registerseller3.dart';
import 'package:comit/screens/register_seller_views/registerseller4.dart';
import 'package:comit/screens/register_seller_views/registerseller5.dart';
import 'package:comit/screens/search_view.dart';
import 'package:comit/screens/signup_views/policy_page.dart';
import 'package:comit/screens/detail_views/detail_view.dart';
import 'package:comit/screens/home_views/home_page.dart';
import 'package:comit/screens/detail_views/location_view.dart';
import 'package:comit/screens/login_page.dart';
import 'package:comit/screens/map_page.dart';
import 'package:comit/screens/onboard_page.dart';
import 'package:comit/screens/signup_views/signup_page.dart';
import 'package:comit/screens/splash_page.dart';
import 'package:comit/screens/wish_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comit',
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
        '/policy': (context) => Policy(),
        '/contract': (context) => Policy(),
        '/homeview': (context) => HomeView(),
        '/detailview': (context) => DetailView(),
        '/locationview': (context) => LocationView(),
        '/mapview': (context) => MapView(),
        '/profileview': (context) => ProfileView(),
        '/chatlists': (context) => ChatLists(),
        '/wishlists': (context) => WishLists(),
        '/chatpage': (context) => ChatPage(),
        '/registerseller1': (context) => RegisterSeller1(),
        '/registerseller2': (context) => RegisterSeller2(),
        '/registerseller3': (context) => RegisterSeller3(),
        '/registerseller4': (context) => RegisterSeller4(),
        '/registerseller5': (context) => RegisterSeller5(),
        '/chatpage': (context) => ChatPage(),
        '/searchview': (context) => SearchView()
      },
    );
  }
}
