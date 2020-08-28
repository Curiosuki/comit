import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlinelecture/screens/assignments/assign_lectures.dart';
import 'package:onlinelecture/screens/assignments/assign_lists.dart';
import 'package:onlinelecture/screens/assignments/assign_omr.dart';
import 'package:onlinelecture/screens/books/book_lists.dart';
import 'package:onlinelecture/screens/books/book_omr_view.dart';
import 'package:onlinelecture/screens/homeview.dart';
import 'package:onlinelecture/screens/mypage.dart';
import 'package:onlinelecture/screens/books/book_ox_lecture.dart';
import 'package:onlinelecture/theme/i_set_color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(
    MyApp(),
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
        accentColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/book_omr_view': (context) => BookOMRView(),
        '/book_ox_lecture': (context) => BookOXLecture(),
        '/assign_omr': (context) => AssignmentOMR(),
        '/assign_lectures': (context) => AssignmentLectures(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    BookLists(),
    Assignment(),
    MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: mainColor,
        unselectedItemColor: black_500,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chalkboardTeacher),
            title: Text('교재강좌'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in),
            title: Text('OMR강좌'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('마이페이지'),
          ),
        ],

      ),
    );
  }
}
