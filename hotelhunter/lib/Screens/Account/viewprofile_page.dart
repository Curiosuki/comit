import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_string.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Button_CircleAvatar.dart';
import 'package:hotelhunter/Widgets/i_Form_Review.dart';
import 'package:hotelhunter/Widgets/i_ListTile_Review.dart';



class ViewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            iHeight8,
            IButtonCircleAvatar(
              imgUrl: 'assets/images/avatar1.jpg',
              radius: 50.0,
            ),
            iHeight16,
            Text('안녕하세요. 반갑습니다!', style: ITextStyle.subTitle, textAlign: TextAlign.center,),
            iHeight32,
            Text('소개인사 ', style: ITextStyle.subTitle,),
            iHeight8,
            Text('$dummyText', style: ITextStyle.bodyblack,),
            iDivider,
            Text('지역 ', style: ITextStyle.subTitle,),
            iHeight8,
            Text('서울시 강남구 어쩌구 저쩌구', style: ITextStyle.bodyblack,),
            iDivider,
            Text('리뷰남기기 ', style: ITextStyle.subTitle,),
            iHeight8,
            IFormReview(),
            iDivider,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => ITileReview(),

            ),
          ],
        ),
      ),
    );
  }
}




