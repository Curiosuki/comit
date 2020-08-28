import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/components/verticaltabcustom.dart';
import 'package:flutterweb/maintab/tab1.dart';
import 'package:flutterweb/maintab/tab2.dart';
import 'package:flutterweb/maintab/tab3.dart';
import 'package:flutterweb/maintab/tab4.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'tab5.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Tab1(),
    Tab2(),
    Tab3(),
    Tab4(),
    Tab5(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: missing_return
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth>800){
          return  Scaffold(
            body: Container(
              child: VerticalTabs(
                indicatorColor: Colors.transparent,
                selectedTabBackgroundColor: Colors.transparent,
                tabTextStyle: TextStyle(color: Colors.grey),
                indicatorWidth: 3,
                tabsElevation: 0,
                tabsWidth: 120,
                direction: TextDirection.ltr,
                contentScrollAxis: Axis.vertical,
                changePageDuration: Duration(milliseconds: 500),
                tabs: <Tab>[
                  Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('HOME', style: TextStyle(fontSize: 14,),)),),
                  Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('DEV TEAM', style: TextStyle(fontSize: 14,),)),),
                  Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('PORTFOLIO', style: TextStyle(fontSize: 14,),)),),
                  Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('SERVICES', style: TextStyle(fontSize: 14,),)),),
                  Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('CONTACT', style: TextStyle(fontSize: 14,),)),),


                ],
                contents: <Widget>[
                  Tab1(),
                  Tab2(),
                  Tab3(),
                  Tab4(),
                  Tab5(),
                ],
              ),
            ),
          );
        }else{
          return Scaffold(
            backgroundColor: mainColor,
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.black,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                fixedColor: mainColor,
                backgroundColor: Colors.black,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home', style: ISetText.captionWhite,),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.dev, color: Colors.white,),
                    title: Text('Dev Team', style: ISetText.captionWhite,),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.mobileAlt, color: Colors.white,),
                    title: Text('Portfolio', style: ISetText.captionWhite,),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.handshake, color: Colors.white,),
                    title: Text('Service', style: ISetText.captionWhite,),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.envelope, color: Colors.white,),
                    title: Text('Contact', style: ISetText.captionWhite,),
                  ),
                ],
                currentIndex: _selectedIndex,
                //selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
              ),
            ),
            body: _widgetOptions.elementAt(_selectedIndex),
          );
        }
      }
    );
  }
}
