import 'package:admin/theme/i_set_color.dart';
import 'package:admin/theme/i_set_size.dart';
import 'package:flutter/material.dart';

import 'components/regis_textbox.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: Text('기본정보'),
              ),
              body: ListView(
                children: [
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '회사명',
                    hint: '',
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
                    title: '사업자등록번호',
                    hint: '',
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
                    title: '업태',
                    hint: '',
                    minLines: 1,
                  ),iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '종목',
                    hint: '',
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
                    title: '주소',
                    hint: '',
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
                    hint: '',
                    minLines: 1,
                  ),

                ],
              ),
            ),
          ),
          iVerticalDivider,
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: Text('약관설정'),
              ),
              body: ListView(
                children: [
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '이용약관',
                    hint: '',
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
                    title: '개인정보 취급방침',
                    hint: '',
                    minLines: 15,
                  ),
                  iHeightLarge,


                ],
              ),
            ),
          ),
          iVerticalDivider,
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: Text('고객센터'),
              ),
              body: ListView(
                children: [
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '전화번호',
                    hint: '',
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
                    title: '이메일',
                    hint: '',
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
                    title: '운영시간',
                    hint: '',
                    minLines: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
