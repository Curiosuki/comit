import 'package:carousel_slider/carousel_slider.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 100,
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
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
      items: [
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Image.asset(
                  'assets/images/banner_1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 8,
                left: 16,
                child: Text(
                  'Web Development',
                  style: ISetText.subTitleWhite,
                ))
          ],
        ),
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Image.asset(
                  'assets/images/banner_2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 8,
                left: 16,
                child: Text(
                  'App Development',
                  style: ISetText.subTitleWhite,
                ))
          ],
        ),
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Image.asset(
                  'assets/images/banner_3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 8,
                left: 16,
                child: Text(
                  'Languages',
                  style: ISetText.subTitleWhite,
                ))
          ],
        ),

      ],
    );
  }
}
