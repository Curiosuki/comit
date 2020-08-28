import 'package:flutter/material.dart';
import 'package:hotelhunter/Screens/Account/account_page.dart';
import 'package:hotelhunter/Screens/Host/bookings_page.dart';
import 'package:hotelhunter/Screens/Host/postings_page.dart';
import 'package:hotelhunter/Screens/InBox/inbox_page.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';

class HostHomePage extends StatefulWidget {
  @override
  _HostHomePageState createState() => _HostHomePageState();
}

class _HostHomePageState extends State<HostHomePage> {
  int _selectedIndex = 3;

  final List<String> _pageTitles = ['예약', '포스팅', '인박스', '프로필'];

  final List<Widget> _pages = [
    BookingsPage(),
    PostingsPage(),
    InBoxPage(),
    AccountPage()
  ];

  BottomNavigationBarItem _buildNavigationItem(
      int index, IconData iconData, String text) {
    return BottomNavigationBarItem(
        icon: Icon(iconData),
        activeIcon: Icon(
          iconData,
          color: mainColor,
        ),
        title: Text(
          text,
          style:
              TextStyle(color: _selectedIndex == index ? mainColor : black_500),
        ));
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
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buildNavigationItem(0, Icons.calendar_today, _pageTitles[0]),
          _buildNavigationItem(1, Icons.home, _pageTitles[1]),
          _buildNavigationItem(2, Icons.message, _pageTitles[2]),
          _buildNavigationItem(3, Icons.person_outline, _pageTitles[3]),
        ],
      ),
    );
  }
}
