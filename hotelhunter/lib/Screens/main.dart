import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelhunter/Screens/Account/account_page.dart';
import 'package:hotelhunter/Screens/Host/createPosting_page.dart';
import 'package:hotelhunter/Screens/Host/hosthome_page.dart';
import 'package:hotelhunter/Screens/InBox/conversation_Page.dart';
import 'package:hotelhunter/Screens/bookingCalendar_page.dart';
import 'package:hotelhunter/Screens/detail_page.dart';
import 'package:hotelhunter/Screens/InBox/inbox_page.dart';
import 'package:hotelhunter/Screens/Login/logIn_page.dart';
import 'package:hotelhunter/Screens/Account/personalInfo_page.dart';
import 'package:hotelhunter/Screens/saved_page.dart';
import 'package:hotelhunter/Screens/Login/signUp_page.dart';
import 'package:hotelhunter/Screens/trips_page.dart';
import 'package:hotelhunter/Screens/Account/viewprofile_page.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'explore_page.dart';
import 'guesthome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor,
        accentColor: mainColor,
        disabledColor: mainColor,
        iconTheme: IconThemeData(
          color: mainColor,
        ),
        buttonColor: mainColor,
      ),
      home: LoginPage(),
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/signUpPage': (context) => SingUpPage(),
        '/guestHomePage': (context) => GuestHomePage(),
        '/explorePage': (context) => ExplorePage(),
        '/tripsPage': (context) => TripsPage(),
        '/inboxPage': (context) => InBoxPage(),
        '/savedPage': (context) => SavedPage(),
        '/accountPage': (context) => AccountPage(),
        '/personalInfoPage': (context) => PersonalInfoPage(),
        '/viewProfilePage': (context) => ViewProfilePage(),
        '/detailPage': (context) => DetailPage(),
        '/bookingCalendarPage': (context) => BookingCalendarPage(),
        '/conversationPage': (context) => ConversationPage(),
        '/hostHomePage': (context) => HostHomePage(),
        '/createPostingPage': (context) => CreatePostingPage(),











      },
    );
  }
}

