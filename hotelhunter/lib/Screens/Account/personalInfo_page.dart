import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Widgets/i_Button_CircleAvatar.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';
import 'package:hotelhunter/Widgets/i_Form_Box.dart';



class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Info'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            iHeight32,
            IButtonCircleAvatar(
              imgUrl: 'assets/images/avatar1.jpg',
              radius: 50.0,
            ),
            iHeight16,
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
              function: () {
                Navigator.pushNamed(context, '/loginPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
