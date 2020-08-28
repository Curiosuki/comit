import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loan4u/theme/i_set_boxdecoration.dart';
import 'package:loan4u/theme/i_set_color.dart';
import 'package:loan4u/theme/i_set_text.dart';



class MainSlider extends StatefulWidget {
  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        height: 100,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        //initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        pauseAutoPlayOnTouch: Duration(seconds: 10),
        enlargeCenterPage: true,
        //onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) => Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Text('ddd'),
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
                      'categoryData[index].title',
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
    );
  }
}
