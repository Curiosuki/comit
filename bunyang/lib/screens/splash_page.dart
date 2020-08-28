import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'onboard_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        loadingText: Text("Let's COMIT", style: ISetText.headline,),
        title: Text(
          "People come\nPeople meet\nPeople commit",
          style: ISetText.display4,
        ),
        seconds: 3,
        navigateAfterSeconds: OnBoardPage(),
        //title: Text('어썸앱에 오신걸 환영합니다.', style: ISetText.display1,),
        image: Image.asset(
          'assets/images/logo2.png',
          fit: BoxFit.cover,
        ),
        backgroundColor: backgroundColor,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 120.0,
        loaderColor: mainColor);
  }
}
