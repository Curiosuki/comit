import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:comit/models/datas/data_category.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
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
        itemCount: categoryData.length,
        itemBuilder: (BuildContext context, int index) => Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Image.asset(
                  categoryData[index].imgUrl,
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
                      categoryData[index].title,
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
