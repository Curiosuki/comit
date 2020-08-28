import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Models/text_model.dart';
import 'package:hijackupgrade/Screens/Book/bookstore_screen.dart';
import 'package:hijackupgrade/Screens/Friends/friends_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/map_screen.dart';
import 'package:hijackupgrade/Screens/Profile/profile_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/teachers_screen.dart';
import 'package:hijackupgrade/Services/auth.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

import 'Analyzer/analyzer_screen.dart';

const String testDevice = 'MobileId';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 애드몹
//  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//    testDevices: testDevice != null ? <String>[testDevice] : null,
//    nonPersonalizedAds: true,
//    keywords: <String>['Game', 'Mario'],
//  );
//
//  BannerAd _bannerAd;
//  InterstitialAd _interstitialAd;
//
//  BannerAd createBannerAd() {
//    return BannerAd(
//        adUnitId: 'ca-app-pub-7375788476545159/5973353232',
//        //Change BannerAd adUnitId with Admob ID
//        size: AdSize.banner,
//        targetingInfo: targetingInfo,
//        listener: (MobileAdEvent event) {
//          print("BannerAd $event");
//        });
//  }
//
//  InterstitialAd createInterstitialAd() {
//    return InterstitialAd(
//        adUnitId: 'ca-app-pub-7375788476545159/9789131706',
//        //Change Interstitial AdUnitId with Admob ID
//        targetingInfo: targetingInfo,
//        listener: (MobileAdEvent event) {
//          print("IntersttialAd $event");
//        });
//  }
//
//  @override
//  void initState() {
//    FirebaseAdMob.instance
//        .initialize(appId: 'ca-app-pub-7375788476545159~7354540055');
//    //Change appId With Admob Id
//    _bannerAd = createBannerAd()
//      ..load()
//      ..show();
//    super.initState();
//  }
//
//  @override
//  void dispose() {
//    _bannerAd.dispose();
//    _interstitialAd.dispose();
//    super.dispose();
//  }
  static TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iHeight16,
            InkWell(
              onTap: (){
                showSearch(context: context, delegate: TextModelSearchScreen());
              },
              child: AvatarGlow(
                glowColor: Colors.blue,
                endRadius: 90.0,
                duration: Duration(milliseconds: 2000),
                repeat: true,
                showTwoGlows: true,
                repeatPauseDuration: Duration(milliseconds: 100),
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(
                    backgroundColor: mainColor,
                    child: Icon(
                      FontAwesomeIcons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                    radius: 40.0,
                  ),
                ),
              ),
            ),
            iHeight16,
            Text('지문 찾아 공부하기', style: ITextStyle.title,)

          ],
        ),
      ),
      Teachers(),
      BookStoreScreen(),
      FriendsScreen(),
      ProfileScreen()

    ];
    return Scaffold(
     // drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: mainColor,
        unselectedItemColor: black_500,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chalkboardTeacher, size: 20,),
            title: Text('전국샘들'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.book, size: 20,),
            title: Text('북스토어'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.users, size: 20,),
            title: Text('친구찾기'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userCheck, size: 20,),
            title: Text('프로필계정'),
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

class TextModelSearchScreen extends SearchDelegate<TextModel> {
  @override
  String get searchFieldLabel => '지문을 검색해주세요.';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
        ),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
      children: [
        iHeight32,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
 //           color: mainColor.withOpacity(0.1),
            decoration: BoxDecoration(
                border: Border.all(color: mainColor)
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              '$query',
              style: ITextStyle.bodyblack,
            ),
          ),
        ),
        iHeight32,
        Container(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0)),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnalyzerScreen(query: query)),
            ),
            child: Text(
              '지문학습 시작',
              style: ITextStyle.bodyWhite,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mySearchList = query.isEmpty
        ? textModelLists
        : textModelLists.where((e) => e.paragraph.startsWith(query)).toList();

    return mySearchList.isEmpty
        ? Center(
            child: Text(
            '검색목록에 해당 지문이 없습니다.',
            style: ITextStyle.title,
          ))
        : ListView.builder(
            itemCount: mySearchList.length,
            itemBuilder: (context, index) {
              final TextModel paragraphs = mySearchList[index];
              return ListTile(
                //leading: Text(paragraphs.category),
                title: RichText(
                  text: TextSpan(
                      text: paragraphs.paragraph.substring(0, query.length),
                      style: ITextStyle.body,
                      children: [
                        TextSpan(
                            text: paragraphs.paragraph.substring(query.length),
                            style: ITextStyle.bodyblack
                                .copyWith(fontWeight: FontWeight.normal)),
                      ]),
                ),
                onTap: () {
                  query = paragraphs.paragraph;
                  showResults(context);
                },
              );
            });
  }
}
