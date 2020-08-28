import 'dart:ui';

import 'package:comit/models/datas/data_user.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../components/button/heart_button.dart';
import '../../components/button/avatar_button.dart';

class MainSlider extends StatefulWidget {
  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      height: 340,
      aspectRatio: 16 / 9,
      viewportFraction: 0.9,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      //enlargeCenterPage: true,
      //onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
      itemCount: productLists.length-1,
      itemBuilder:(BuildContext context, int index) => GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/detailview'),
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: iBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                  child: Container(
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Image.asset(
                            productLists[index].thumbNail,
                            fit: BoxFit.cover,
//                            color: mainColor.withOpacity(0.3),
//                            colorBlendMode: BlendMode.srcATop,
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: HeartButton(),
                        ),
                        Positioned(
                          bottom: 12,
                          right: 12,
                          child: Row(
                            children: <Widget>[
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
                              iWidthMedium,
                              AvatarButton(radius: 24.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  child: Container(
                    //color: mainColor.withOpacity(0.5),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  productLists[index].productTitle,
                                  style: ISetText.title,
                                ),
                                iHeightMedium,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[

                                    Text(
                                      '\$ ${productLists[index].feePerHour}',
                                      style: ISetText.headline,
                                    ),
                                  ],
                                ),
                                iHeightMedium,
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    SmoothStarRating(
                                      allowHalfRating: true,
                                      starCount: 5,
                                      rating: productLists[index].rating,
                                      size: 25,
                                      color: ratingColor,
                                      borderColor: ratingColor,
                                    ),
                                    iWidthLarge,
                                    Text(
                                      '(${productLists[index].countViews})',
                                      style: ISetText.textSectionGrey,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
