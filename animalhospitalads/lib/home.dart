import 'dart:ui';

import 'package:animalhospitalads/components/avatar_button.dart';
import 'package:animalhospitalads/theme/i_set_boxdecoration.dart';
import 'package:animalhospitalads/theme/i_set_color.dart';
import 'package:animalhospitalads/theme/i_set_size.dart';
import 'package:animalhospitalads/theme/i_set_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: mainColor,
        icon: Icon(Icons.phone),
        label: Text("전화상담"),
      ),
      appBar: AppBar(
        backgroundColor: black_50,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarButton(radius: 25.0, avatarUrl: 'assets/images/logo.png',),
            iWidthMedium,
            Text('애니포인트', style: ISetText.title,),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(4),
            decoration: iBoxDecoration,
            child: TextField(
              cursorColor: mainColor,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: mainColor),
                hintText: '우리동네 동물병원을 검색해보세요',
                prefixIcon: Icon(FontAwesomeIcons.search, color: mainColor),
                border: InputBorder.none,
                //contentPadding: EdgeInsets.all(20),
              ),
            ),
          ),
          iHeightMedium,
          Container(
            child: CarouselSlider.builder(
              height: 100,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              //initialPage: 0,
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
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) => Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: Image.network(
                        'https://m.mypetplus.co.kr/upload/201904301024380.jpg',
                        fit: BoxFit.cover,
//                  color: mainColor.withOpacity(0.3),
//                  colorBlendMode: BlendMode.srcATop,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 16,
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: BackdropFilter(
                        filter: new ImageFilter.blur(
                            sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          color: mainColor.withOpacity(0.6),
                          child: Text(
                            '',
                            style: ISetText.textSectionWhite,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          iHeightMedium,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '베스트 동물병원',
              style: ISetText.subTitle,
            ),
          ),
          Container(
            child: CarouselSlider.builder(
              height: 100,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              //initialPage: 0,
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
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) => Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: Image.network(
                        'http://www.adrun.co.kr/data/editor/1811/thumb-fc0cf2d8dec67aa790791f61428108d3_1543566607_9345_1000x365.png',
                        fit: BoxFit.cover,
//                  color: mainColor.withOpacity(0.3),
//                  colorBlendMode: BlendMode.srcATop,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 16,
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: BackdropFilter(
                        filter: new ImageFilter.blur(
                            sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          color: mainColor.withOpacity(0.6),
                          child: Text(
                            'Best',
                            style: ISetText.textSectionWhite,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          iHeightMedium,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '우리동네 동물병원',
              style: ISetText.subTitle,
            ),
          ),
          iHeightMedium,
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/store'),
            leading: AvatarButton(radius: 25.0, avatarUrl: 'assets/images/hospital.jpeg',),
            title: Text('이노동물병원'),
            subtitle: Text('엄마의 마음으로 진료합니다!'),
            trailing: Text('수원시 영통구'),
          ),


        ],
      )
    );
  }
}
