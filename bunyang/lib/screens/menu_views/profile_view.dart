import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/button/user_button.dart';
import 'package:comit/components/profile_lists.dart';
import 'package:comit/models/user_model.dart';
import 'package:comit/theme/i_set_margin.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_contract.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: mainColor,
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)
            ),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  UserButton(radius: 50.0, avatarUrl: userInfo[0].userAvatarUrl,),
                  iHeightMedium,
                  Text(userInfo[0].email),
                ],
              ),
              MainButton(
                height: 60.0,
                child: Text(
                  'Want to be a Tutor?',
                  style: ISetText.subTitle,
                ),
                pressedButton: null,
              ),
              iDivider,
              ProfileLists(
                text: 'Notice',
                icon: Icon(FontAwesomeIcons.bell, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'My Classes',
                icon: Icon(FontAwesomeIcons.chalkboardTeacher, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'FAQ',
                icon: Icon(FontAwesomeIcons.question, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Policies',
                icon: Icon(FontAwesomeIcons.fileSignature, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Ask',
                icon: Icon(FontAwesomeIcons.commentAlt, color: mainColor,),
              ),
              iDivider,
            ],
          ),
        ));
  }
}
