import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_size.dart';
import 'package:flutterweb/theme/i_set_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: CarouselSlider(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              items: <Widget>[
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset('assets/images/main1.jpg',
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset('assets/images/main2.jpg',
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.asset('assets/images/main3.jpg',
                      fit: BoxFit.cover,
                    )),
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "",
                  style: TextStyle(fontSize: 43.0),
                ),
                SizedBox(width: 20.0, height: 100.0),
                RotateAnimatedTextKit(
                    onTap: null,
                    text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
                    textStyle: TextStyle(fontSize: 45.0, fontFamily: 'Monoton', color: Colors.white),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width / 1.5,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: Colors.black45.withOpacity(0.3),
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Curio Studio',
                            style: ISetText.display4White,
                          ),
                        ),
                        iHeightMedium,
                        Flexible(
                          child: Text(
                            'Web / App Development',
                            style: ISetText.subTitle.copyWith(color: black_50),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
