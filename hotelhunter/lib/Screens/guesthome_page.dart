import 'package:flutter/material.dart';
import 'package:hotelhunter/Screens/Account/account_page.dart';
import 'package:hotelhunter/Screens/explore_page.dart';
import 'package:hotelhunter/Screens/InBox/inbox_page.dart';
import 'package:hotelhunter/Screens/saved_page.dart';
import 'package:hotelhunter/Screens/trips_page.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';


class GuestHomePage extends StatefulWidget {
  @override
  _GuestHomePageState createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {

  int _selectedIndex = 0;

  final List<String> _pageTitles = [
    '검색',
    '저장',
    '여행',
    '인박스',
    '프로필'
  ];

  final List<Widget> _pages = [
    ExplorePage(),
    SavedPage(),
    TripsPage(),
    InBoxPage(),
    AccountPage()
  ];


  BottomNavigationBarItem _buildNavigationItem(int index, IconData iconData, String text) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      activeIcon: Icon(iconData, color: mainColor,),
      title: Text(text, style: TextStyle(color: _selectedIndex == index ? mainColor : black_500),)
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${_pageTitles[_selectedIndex]}'),
        automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
        ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buildNavigationItem(0, Icons.search, _pageTitles[0]),
          _buildNavigationItem(1, Icons.favorite_border, _pageTitles[1]),
          _buildNavigationItem(2, Icons.hotel, _pageTitles[2]),
          _buildNavigationItem(3, Icons.message,_pageTitles[3]),
          _buildNavigationItem(4, Icons.person_outline, _pageTitles[4])
        ],
      ),
    );
  }
}
