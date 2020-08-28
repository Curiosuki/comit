import 'package:comit/components/button/user_button.dart';
import 'package:comit/models/user_model.dart';
import 'package:comit/theme/i_set_margin.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_string.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Tab4View extends StatefulWidget {
  @override
  _Tab4ViewState createState() => _Tab4ViewState();
}

class _Tab4ViewState extends State<Tab4View> {
  var index = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: <Widget>[
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            decoration: iBoxDecoration,
            child: Center(
              child: Text(
                'Write Your Review',
                style: ISetText.subTitle,
              ),
            ),
          ),
          iDivider,
          Column(
            children: <Widget>[
              Text(
                'Class Rating',
                style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
              ),
              iHeightMedium,
              Text(
                '3.0',
                style: ISetText.headline,
              ),
              iHeightSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesomeIcons.userAlt, size: 12, color: Colors.grey,),
                  iWidthMedium,
                  Text('123,456 total', style: ISetText.textSectionGrey,)
                ],
              ),
              iHeightMedium,
              SmoothStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: 3,
                size: 24,
                color: Colors.amber,
                borderColor: Colors.amber,
              ),
              iHeightMedium,
            ],
          ),
          iHeightMedium,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('- Curriculum'),
                  ),
                  Spacer(),
                  Expanded(
                    child: SmoothStarRating(
                      allowHalfRating: true,
                      starCount: 5,
                      rating: 3,
                      size: 18,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('- Communication'),
                  ),
                  Spacer(),
                  Expanded(
                    child: SmoothStarRating(
                      allowHalfRating: true,
                      starCount: 5,
                      rating: 3,
                      size: 18,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('- Punctuality'),
                  ),
                  Spacer(),
                  Expanded(
                    child: SmoothStarRating(
                      allowHalfRating: true,
                      starCount: 5,
                      rating: 3,
                      size: 18,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('- Delivery'),
                  ),
                  Spacer(),
                  Expanded(
                    child: SmoothStarRating(
                      allowHalfRating: true,
                      starCount: 5,
                      rating: 3,
                      size: 18,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              iHeightMedium,
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('- Readiness'),
                  ),
                  Spacer(),
                  Expanded(
                    child: SmoothStarRating(
                      allowHalfRating: true,
                      starCount: 5,
                      rating: 3,
                      size: 18,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                    ),
                  ),
                ],
              ),
              iDivider,
            ],
          ),
          Center(
            child: Text(
              'Reviews',
              style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          iHeightMedium,
          Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: iBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: UserButton(
                        radius: 30.0, avatarUrl: buyerInfo[0].userAvatarUrl,
                      ),
                    ),
                    iWidthMedium,
                    Expanded(
                      flex: 4,
                      child: Text(buyerInfo[0].userName),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    dummyTextE,
                    style: ISetText.textSectionGrey,
                  ),
                ),
                Text('2020-02-01', style: ISetText.captionGrey,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
