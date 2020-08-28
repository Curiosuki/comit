import 'package:flutter/material.dart';
import 'package:hotelhunter/Models/appConstants.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Button_CircleAvatar.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  bool _isHosting = false;
  String _hostingTitle = 'To Host Dashboard';

 @override
  void initState() {

   if(AppConstants.isHosting){
     _hostingTitle = 'To Guest Dashboard';
   }
    super.initState();
  }

  void _changeHosting(){
   String routeName = AppConstants.isHosting ? '/guestHomePage' : '/hostHomePage' ;
   AppConstants.isHosting = true;
    Navigator.pushNamed(context, routeName);
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        iHeight32,
        IButtonCircleAvatar(
          imgUrl: 'assets/images/avatar1.jpg',
          radius: 50.0,
          function: () => Navigator.pushNamed(context, '/viewProfilePage'),
        ),
        iHeight8,
        Text(
          'Jack Kim',
          style: ITextStyle.title,
          textAlign: TextAlign.center,
        ),
        iHeight8,
        Text(
          'hijack0713@gmail.com',
          style: ITextStyle.bodyGrey,
          textAlign: TextAlign.center,
        ),
        iHeight32,
        ListTile(
          onTap: () => Navigator.pushNamed(context, '/personalInfoPage'),
          leading: Text(
            'Personal Information',
            style: ITextStyle.body,
          ),
          trailing: Icon(
            Icons.person,
            color: mainColor,
          ),
        ),
        ListTile(
          onTap: _changeHosting,
          leading: Text(
            _hostingTitle,
            style: ITextStyle.body,
          ),
          trailing: Icon(
            Icons.hotel,
            color: mainColor,
          ),
        ),
        ListTile(
          onTap: () => Navigator.pushNamed(context, '/loginPage'),
          leading: Text(
            'Logout',
            style: ITextStyle.body,
          ),
          trailing: Icon(
            Icons.forward,
            color: mainColor,
          ),
        ),
      ],
    );
  }
}
