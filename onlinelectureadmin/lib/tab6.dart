import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_string.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';

import 'components/regis_textbox.dart';

class Tab6 extends StatelessWidget {
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
                      title: '제목',
                      hint: '제목',
                      minLines: 1,
                    ),
                    iHeightLarge,
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '내용',
                      hint: '내용을 적어주세요',
                      minLines: 15,
                    ),
                    iHeightLarge,
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '이미지 첨부',
                      hint: '첨부할 이미지를 넣어주세요',
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
                      leading: Text('1'),
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
