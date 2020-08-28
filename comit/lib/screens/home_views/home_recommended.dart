import 'package:comit/models/datas/data_user.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../components/button/heart_button.dart';
import '../../theme/i_set_size.dart';
import '../../components/button/avatar_button.dart';

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
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: double.infinity,
                            child: Image.asset(
                              productLists[index].thumbNail,
                              fit: BoxFit.cover,
                              color: mainColor.withOpacity(0.2),
                              colorBlendMode: BlendMode.srcATop,
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
                            child: AvatarButton(
                              avatarUrl: sellerInfo[index].userAvatarUrl,
                              radius: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              productLists[index].productTitle,
                              style: ISetText.subTitle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Text(''),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    '\$ ${productLists[index].feePerHour}',
                                    style: ISetText.title,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: SmoothStarRating(
                                    allowHalfRating: true,
                                    starCount: 5,
                                    rating: productLists[index].rating,
                                    size: 18,
                                    color: ratingColor,
                                    borderColor: ratingColor,
                                  ),
                                ),
                                iWidthLarge,
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    '(${productLists[index].countViews})',
                                    style: ISetText.captionGrey,
                                  ),
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
