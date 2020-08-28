import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';

class IGridTileProduct extends StatefulWidget {
  @override
  _IGridTileProductState createState() => _IGridTileProductState();
}

class _IGridTileProductState extends State<IGridTileProduct> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/detailPage'),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/apt2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          iHeight8,
          Text('경기도 수원시', style: ITextStyle.textSection,),
          iHeight4,
          Text(
            '남양주 장현 수목원자락 산 밑 아파트',
            style: ITextStyle.bodyblack.copyWith(fontWeight: FontWeight.w700),
          ),
          iHeight8,
          Row(
            children: [
              StarRating(size: 15,),
              Spacer(),
              RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                  text: '70,000',
                  style: ITextStyle.bodyblack.copyWith(fontWeight: FontWeight.w700),
                  children: <TextSpan>[
                    TextSpan(text: '원/시간', style: ITextStyle.textSectionGrey),
                  ],
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
