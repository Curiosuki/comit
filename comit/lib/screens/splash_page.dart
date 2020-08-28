import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/cupertino.dart';
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
        title: Text(
          "Let's Comit",
          style: ISetText.display4,
        ),
        loadingText: Text("loading...", style: ISetText.headline,),
        seconds: 3,
        navigateAfterSeconds: OnBoardPage(),
        image: Image.asset(
          'assets/images/logo2.png',
          fit: BoxFit.cover,
        ),
        backgroundColor: backgroundColor,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: mainColor);
  }
}
