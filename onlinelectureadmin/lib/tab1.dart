import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';

import 'components/regis_textbox.dart';


class Tab1 extends StatelessWidget {
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
                child: ListView(
                  children: [
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '학원명',
                      hint: '학원명을 입력해주세요',
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
                      title: '전화번호',
                      hint: '학원 전화번호를 입력해주세요',
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
                      title: '학원주소',
                      hint: '학원주소를 입력해주세요',
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
                      title: '학원홈페이지 주소',
                      hint: '학원홈페이지 url을 입력해주세요',
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
                      title: '정책',
                      hint: '내용을 적어주세요',
                      minLines: 15,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
