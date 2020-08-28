import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotelhunter/Models/appConstants.dart';
import 'package:hotelhunter/Models/data.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';
import 'package:hotelhunter/Widgets/i_Form_Box.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _signUp(){
    Navigator.pushNamed(context, '/signUpPage');
  }
  void _login(){

    PracticeData.populateFields();
    AppConstants.currenUser = PracticeData.users[0];
    Navigator.pushNamed(context, '/signUpPage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: mainColor,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                //decoration: BoxDecoration(gradient: iLinearGradient),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.airbnb,
                      color: Colors.white,
                      size: 56,
                    ),
                    iHeight32,
                    Text(
                      'Welcome to ',
                      style: ITextStyle.display1White,
                      textAlign: TextAlign.center,
                    ),
                    iHeight32,
                    TextLiquidFill(
                      text: '${AppConstants.appName}',
                      waveColor: Colors.white,
                      boxBackgroundColor: mainColor,
                      textStyle: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 120.0,
                    ),
                  ],
                )),
            iHeight32,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: iBorderRadius,
                  child: Container(
                    color: mainColor,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: iBorderRadius,
                  child: Container(
                    color: mainColor,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            iHeight32,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IFormBox(
                    icon: Icon(
                      Icons.email,
                      color: mainColor,
                    ),
                    hintText: '이메일',
                  ),
                  iHeight16,
                  IFormBox(
                    icon: Icon(
                      Icons.lock,
                      color: mainColor,
                    ),
                    hintText: '비밀번호',
                  ),
                  iHeight16,
                  IButtonFlat(
                    title: '로그인',
                    function: () => Navigator.pushNamed(context, '/guestHomePage'),
                  ),
                  iHeight32,
                ],
              ),
            ),

            Container(
              padding: iPaddingAll8,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: Text(
                        '아직 계정이 없으신가요?',
                        textAlign: TextAlign.start,
                      )),
                  Expanded(
                      child: InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, '/signUpPage'),
                          child: Text(
                            '회원가입',
                            textAlign: TextAlign.end,
                            style: ITextStyle.textSection,
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


