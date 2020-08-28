import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Widgets/i_Form_Box.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';



class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            iHeight32,
            IFormBox(
              hintText: '이름',
            ),
            iHeight16,
            IFormBox(
              hintText: '도시',
            ),
            iHeight16,
            IFormBox(
              hintText: '국가',
            ),
            iHeight16,
            IFormBox(
              minLines: 5,
              hintText: '자기소개',
            ),
            iHeight16,
            IButtonFlat(
              title: '저장',
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
