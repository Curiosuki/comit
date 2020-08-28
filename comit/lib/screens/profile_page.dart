import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/components/profile_lists.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
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
                  AvatarButton(radius: 50.0, avatarUrl: userInfo[0].userAvatarUrl,),
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
                pressedButton: () => Navigator.pushNamed(context, '/registerseller1'),
              ),
              iDivider,
              ProfileLists(
                text: 'Notice',
                icon: Icon(FontAwesomeIcons.bell, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'My Classes',
                icon: Icon(FontAwesomeIcons.shoppingCart, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'FAQ',
                icon: Icon(FontAwesomeIcons.question, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Policies',
                icon: Icon(FontAwesomeIcons.fileContract, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Ask',
                icon: Icon(FontAwesomeIcons.commentAlt, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Setting',
                icon: Icon(FontAwesomeIcons.cog, color: mainColor,),
              ),
              iDivider,
              ProfileLists(
                text: 'Logout',
                icon: Icon(FontAwesomeIcons.signOutAlt, color: mainColor,),
              ),
            ],
          ),
        ));
  }
}
