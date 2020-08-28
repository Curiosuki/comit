
import 'package:bunyang/models/product_model.dart';
import 'package:bunyang/models/user_model.dart';
import 'package:bunyang/theme/i_set_boxdecoration.dart';
import 'package:bunyang/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'button/heart_button.dart';
import '../theme/i_set_margin.dart';
import 'button/user_button.dart';

class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: productLists.length -1,
        itemBuilder: (BuildContext context, int index) => Container(
              height: 180,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 25),
              decoration: iBoxDecoration,
              child: ClipRRect(
                borderRadius: iBorderRadiusRound,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: double.infinity,
                            child: Image.asset(
                              productLists[index].thumbNail,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: HeartButton(),
                          ),
                          Positioned(
                            bottom: 12,
                            left: 12,
                            child: UserButton(
                              avatarUrl: sellerInfo[index].userAvatarUrl,
                              radius: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              productLists[index].productName,
                              style: ISetText.subTitle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '\$ ${productLists[index].pricePerHour}',
                                  style: ISetText.subTitle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SmoothStarRating(
                                  allowHalfRating: true,
                                  starCount: 5,
                                  rating: productLists[index].rating,
                                  size: 18,
                                  color: Colors.amber,
                                  borderColor: Colors.amber,
                                ),
                                iWidthLarge,
                                Text(
                                  '(${productLists[index].countViews})',
                                  style: ISetText.captionGrey,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
