import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';


class ITileReview extends StatefulWidget {
  @override
  _ITileReviewState createState() => _ITileReviewState();
}

class _ITileReviewState extends State<ITileReview> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/avatar1.jpg'),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Angel Yu'),
          StarRating(
            starCount: 5,
            color: mainColor,
            size: 20,
          ),
        ],
      ),
      subtitle: Text('dudalskfjlasdjflaksjdflasjdlxxxaaaaaaaaaaaaaaaaaafkj')
    );
  }
}


