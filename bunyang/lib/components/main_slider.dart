import 'package:comit/models/product_model.dart';
import 'package:comit/models/user_model.dart';
import 'package:comit/theme/i_set_margin.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'button/heart_button.dart';
import 'button/user_button.dart';

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
      viewportFraction: 0.8,
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
        child: ClipRRect(
          borderRadius: iBorderRadiusRound,
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
                            child: UserButton(radius: 24.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: iBorderRadiusRound,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      productLists[index].productName,
                                      style: ISetText.subTitle,
                                    ),
                                    iHeightMedium,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[

                                        Text(
                                          '\$ ${productLists[index].pricePerHour}',
                                          style: ISetText.title,
                                        ),
                                      ],
                                    ),
                                    iHeightMedium,
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SmoothStarRating(
                                          allowHalfRating: true,
                                          starCount: 5,
                                          rating: productLists[index].rating,
                                          size: 25,
                                          color: Colors.amber,
                                          borderColor: Colors.amber,
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
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
