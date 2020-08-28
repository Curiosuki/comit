import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: mainSliderBackground,
      child: CarouselSlider.builder(
          height: 230,
          aspectRatio: 9 / 16,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: Duration(seconds: 10),
          enlargeCenterPage: true,
          //onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
          itemCount: productLists.length - 1,
          itemBuilder: (BuildContext context, int index) => Container(
              margin: EdgeInsets.all(8),
              //decoration: iBoxDecoration,
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      decoration: iBoxDecoration,
                      height: double.infinity,
                      child: Image.asset(
                        productLists[index].thumbNail,
                        fit: BoxFit.fitHeight,
                        color: mainColor.withOpacity(0.2),
                        colorBlendMode: BlendMode.srcATop,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 25,
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              color: black_700.withOpacity(0.2),
                              blurRadius: 10),
                        ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            AvatarButton(
                              radius: 30.0,
                              avatarUrl: sellerInfo[index].userAvatarUrl,
                            ),
                            iWidthMedium,
                            ClipRRect(
                              borderRadius: iBorderRadiusRound,
                              child: BackdropFilter(
                                filter: new ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  color: mainColor.withOpacity(0.5),
                                  child: Text(
                                    sellerInfo[index].userName,
                                    style: ISetText.textSectionWhite,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: ClipRRect(
                        borderRadius: iBorderRadiusRound,
                        child: BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: mainColor.withOpacity(0.6),
                            child: Text(
                              productLists[index].productTitle,
                              style: ISetText.bodyWhite,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Only \$ ${productLists[index].feePerHour} now",
                      style: TextStyle(
                        color: black_50,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: mainFontColor,
                            offset: Offset(5.0, 5.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
