import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';
import 'package:hotelhunter/Widgets/i_Form_Box.dart';

class IFormReview extends StatefulWidget {
  @override
  _IFormReviewState createState() => _IFormReviewState();
}

class _IFormReviewState extends State<IFormReview> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          StarRating(
            rating: 2.5,
            size: 30,
            starCount: 5,
            color: mainColor,
            borderColor: mainColor,
            onRatingChanged: (rating){},
          ),
          iHeight8,
          IFormBox(
            hintText: '후기를 남겨주세요',
            maxLines: 2,
          ),
          iHeight8,
          IButtonFlat(
            function: (){},
            title: '저장',
          )
        ],
      ),
    );
  }
}
