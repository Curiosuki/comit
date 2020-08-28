import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_string.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';
import 'components/regis_textbox.dart';



class Tab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Column(
                  children: [
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '유튜브 URL',
                      hint: '유튜브 URL',
                      minLines: 1,
                    ),
                    iHeightLarge,
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        color: mainColor,
                        onPressed: () {  },
                        child: Text('업로드', style: ISetText.bodyWhite,),

                      ),
                    )
                  ],
                ),
              ),
            ),
            iVerticalDivider,
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: ListTile(
                      onTap: (){},
                      leading: Image.network('https://post-phinf.pstatic.net/MjAxODA2MjBfNDQg/MDAxNTI5NDc0NjQ2NjA5.w44_AHl2P9rsHUYjy-4ZdFOAHaQctCzXzhWvVly1Ejcg.dZrZG9frQyc16uRKRKJSDMhlr40wCnpgX2yp4KG-tIIg.JPEG/%EA%B9%80%EC%83%88%EB%A1%A01.jpg?type=w1200'),
                      title: Text('코로나 대비 방역 상황'),
                      subtitle: Text(dummyText),
                    ),
                    actions: [
                      IconSlideAction(
                        caption: '삭제',
                        color: Colors.redAccent,
                        icon: Icons.delete,
                        onTap: () {},
                      ),
                      IconSlideAction(
                        caption: '수정',
                        color: Colors.blueAccent,
                        icon: Icons.edit,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
