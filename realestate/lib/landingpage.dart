import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realestate/components/heart_button.dart';
import 'package:realestate/theme/i_set_boxdecoration.dart';
import 'package:realestate/theme/i_set_color.dart';
import 'package:realestate/theme/i_set_size.dart';
import 'package:realestate/theme/i_set_text.dart';

import 'components/avatar_button.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: '굿방\n',
            style: ISetText.titleBlack,
            children: <TextSpan>[
              TextSpan(text: '부동산 투자가 현명해지는 시간', style: ISetText.captionGrey),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('아파트', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('오피스텔', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('상가', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('상가주택', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('지식산업', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('아파트', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('아파트', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: black_400),
                        borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Text('아파트', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: black_900,
        unselectedItemColor: black_400,
        selectedFontSize: 12,
        unselectedFontSize: 10,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('지도'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('위시리스트'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment),
            title: Text('채팅'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('설정'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            iHeightLarge,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '프리미엄',
                style: ISetText.titleBlack,
              ),
            ),
            iHeightMedium,
            CarouselSlider(
              height: 300,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              enlargeCenterPage: false,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
              items: <Widget>[

                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                      height: 250,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/b4.jpg',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorDodge,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        height: 80,
                        width: 350,
                        decoration: iBoxDecoration,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              iHeightMedium,
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: bannerBlue,
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  height: 25,
                                  child: Text('오피스텔/상가', style: ISetText.textSectionWhite,),
                                ),
                              ),
                              iHeightMedium,
                              Text('[동탄] 르보아시티', style: ISetText.subTitleBlack,)
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                        right: 20,
                        top: 20,
                        child: HeartButton())

                  ],
                ),

              ],
            ),
            iHeightLarge,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'MD 추천',
                style: ISetText.titleBlack,
              ),
            ),
            iHeightMedium,
            CarouselSlider(
              height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              enlargeCenterPage: false,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
              items: <Widget>[
                Stack(
                  alignment: Alignment.centerRight,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/b1.jpg',
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: Container(
                        decoration: iBoxDecoration,
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        width: 180,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('실투자금', style: ISetText.textSectionGrey,),
                            iHeightSmall,
                            Text('2억 5천 만원', style: ISetText.titleBlack,),
                            iHeightLarge,
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                color: bannerBlue,
                                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                height: 25,
                                child: Text('오피스텔/상가', style: ISetText.textSectionWhite,),
                              ),
                            ),
                            iHeightMedium,
                            Text('[동탄] 르보아시티', style: ISetText.subTitleBlack, overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: AvatarButton(
                        radius: 24.0,
                        avatarUrl: 'assets/images/avatar1.jpg',
                      ),
                    ),
                    Positioned(
                      right: 10,
                        top: 10,
                        child: HeartButton())

                  ],
                ),

              ],
            ),
            iHeightLarge,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '신규분양',
                style: ISetText.titleBlack,
              ),
            ),
            iHeightMedium,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: GridView.count(
                primary: true,
                shrinkWrap: true,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 20.0,
                crossAxisCount: 2,
                addAutomaticKeepAlives: false,
                children: <Widget>[
                  Container(
                    height: 250,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset('assets/images/b5.jpg', fit: BoxFit.cover,))),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              HeartButton(size: 16.0,),

                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: iBoxDecoration,
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    color: bannerBlue,
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                    height: 25,
                                    width: 80,
                                    child: Center(child: Text('오피스텔', style: ISetText.textSectionWhite.copyWith(fontSize: 12),)),
                                  ),
                                ),
                                iHeightSmall,
                                Text('[동탄] 르보아시티', style: ISetText.bodyblack, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
                                iHeightSmall,
                                Text('실투자금 3억 6500만원', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset('assets/images/b5.jpg', fit: BoxFit.cover,))),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              HeartButton(size: 16.0,),

                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: iBoxDecoration,
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    color: bannerBlue,
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                    height: 25,
                                    width: 80,
                                    child: Center(child: Text('오피스텔', style: ISetText.textSectionWhite.copyWith(fontSize: 12),)),
                                  ),
                                ),
                                iHeightSmall,
                                Text('[동탄] 르보아시티', style: ISetText.bodyblack, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
                                iHeightSmall,
                                Text('실투자금 3억 6500만원', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset('assets/images/b5.jpg', fit: BoxFit.cover,))),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              HeartButton(size: 16.0,),

                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: iBoxDecoration,
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    color: bannerBlue,
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                    height: 25,
                                    width: 80,
                                    child: Center(child: Text('오피스텔', style: ISetText.textSectionWhite.copyWith(fontSize: 12),)),
                                  ),
                                ),
                                iHeightSmall,
                                Text('[동탄] 르보아시티', style: ISetText.bodyblack, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
                                iHeightSmall,
                                Text('실투자금 3억 6500만원', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Image.asset('assets/images/b5.jpg', fit: BoxFit.cover,))),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              HeartButton(size: 16.0,),

                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: iBoxDecoration,
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    color: bannerBlue,
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                                    height: 25,
                                    width: 80,
                                    child: Center(child: Text('오피스텔', style: ISetText.textSectionWhite.copyWith(fontSize: 12),)),
                                  ),
                                ),
                                iHeightSmall,
                                Text('[동탄] 르보아시티', style: ISetText.bodyblack, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
                                iHeightSmall,
                                Text('실투자금 3억 6500만원', style: ISetText.textSectionBlack, textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
