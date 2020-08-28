import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hijackupgrade/Providers/cart.dart';
import 'package:hijackupgrade/Providers/orders.dart';
import 'package:hijackupgrade/Screens/Book/book_detail_screen.dart';
import 'package:hijackupgrade/Screens/Book/bookstore_screen.dart';
import 'package:hijackupgrade/Screens/Book/cart_screen.dart';
import 'package:hijackupgrade/Screens/Book/orders_screen.dart';
import 'package:hijackupgrade/Screens/Friends/friends_screen.dart';
import 'package:hijackupgrade/Screens/LogIn/landing_screen.dart';
import 'package:hijackupgrade/Screens/home_screen.dart';
import 'package:hijackupgrade/Screens/Profile/learning_progress_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/map_screen.dart';
import 'package:hijackupgrade/Screens/jsonuploader/json_uploader.dart';
import 'package:hijackupgrade/Screens/study_detail_screen.dart';
import 'package:hijackupgrade/Screens/study_list_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/teacher_detail_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/teachers_screen.dart';
import 'package:hijackupgrade/Services/auth.dart';
import 'package:provider/provider.dart';
import 'Providers/books.dart';
import 'Screens/Analyzer/analyzer_screen.dart';
import 'Screens/Teachers/review_screen.dart';
import 'Themes/i_set_color.dart';

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

    return MultiProvider(
      providers: [
        Provider<AuthBase>(create: (_) => Auth()),
        ChangeNotifierProvider<Books>(create: (_) => Books()),
        ChangeNotifierProvider<Cart>(create: (_) => Cart()),
        ChangeNotifierProvider<Orders>(create: (ctx) => Orders()),

      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: mainColor,
//            primarySwatch: Colors.grey,
//            inputDecorationTheme: InputDecorationTheme(
//              contentPadding: EdgeInsets.all(1),
//              border: OutlineInputBorder(
//                borderSide: BorderSide(color: mainColor),
//                //borderRadius:  BorderRadius.circular(10.0),
//              ),
//              enabledBorder: OutlineInputBorder(
//                borderSide: BorderSide(color: mainColor),
//                //borderRadius:  BorderRadius.circular(10.0),
//              ),
//              hintStyle:
//              Theme.of(context).textTheme.headline6.copyWith(color: mainColor),
//            ),
              accentColor: mainColor,
              disabledColor: mainColor,
              scaffoldBackgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: mainColor,
              ),
              buttonColor: mainColor,
              appBarTheme: AppBarTheme(
                elevation: 0,
                color: Colors.white,
                centerTitle: true,
                iconTheme: IconThemeData(
                  color: mainColor,
                ),
                textTheme: Theme.of(context)
                    .primaryTextTheme
                    .apply(bodyColor: mainColor),
              )),
          home: HomeScreen(),
          routes: {
            //'/homeScreen': (context) => HomeScreen(),
            //'/loginScreen' : (context) => LoginScreen(),
            '/analyzerScreen': (context) => AnalyzerScreen(),
            '/mapScreen': (context) => MapScreen(),
            '/reviewScreen': (context) => ReviewScreen(),
            '/teachersScreen': (context) => Teachers(),
            '/teacherDetailScreen': (context) => TeacherDetailScreen(),
            '/studyListScreen': (context) => StudyListScreen(),
            '/studyDetailScreen': (context) => StudyDetailScreen(),
            '/learningProgressScreen': (context) => LearningProgressScreen(),
            '/friendsScreen': (context) => FriendsScreen(),
            '/bookstoreScreen': (context) => BookStoreScreen(),
            '/bookDetailScreen': (context) => BookDetailScreen(),
            '/cartScreen' : (context) => CartScreen(),
            '/ordersScreen' : (context) => OrdersScreen()

          }),
    );
  }
}
