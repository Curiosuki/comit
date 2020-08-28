import 'package:auto_size_text/auto_size_text.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import '../theme/i_set_margin.dart';
import '../components/button/main_button.dart';
import '../components/user_textfield.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 60,
                    ),
                    child: AutoSizeText(
                      'Log in',
                      maxLines: 1,
                      style: ISetText.display4,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 100,
                    child: Image.asset('assets/images/logo2.png', fit: BoxFit.cover,),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: MainButton(
                      height: 60.0,
                      child: iFacebook,
                      pressedButton: null,
                    ),
                  ),
                  iWidthLarge,
                  Expanded(
                    child: MainButton(
                      height: 60.0,
                      child: iGoogle,
                      pressedButton: null,
                    ),
                  ),
                ],
              ),
              iHeightLarge,
              Text(
                'E-mail',
                style: ISetText.body,
              ),
              iHeightSmall,
              IUserTextField(
                obscureText: false,
                prefixIcon: Icon(
                  Icons.email,
                  color: mainColor,
                ),
                hintText: 'Enter Your E-mail',
              ),
              iHeightLarge,
              Text(
                'Passwords',
                style: ISetText.body,
              ),
              iHeightSmall,
              IUserTextField(
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: mainColor,
                ),
                hintText: 'Enter Your Passwords',
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                alignment: Alignment.centerRight,
                child: InkWell(
                  child: Text(
                    'Forgot Your Passwords?',
                    style: ISetText.body.copyWith(color: black_500),
                  ),
                ),
              ),
              iHeightLarge,
              MainButton(
                height: 60.0,
                child: Text(
                  'Login',
                  style: ISetText.title,
                ),
                pressedButton: () => Navigator.pushNamed(context, '/homeview'),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/signup'),
                child: Center(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'No Account?',
                        style: ISetText.body.copyWith(color: black_500),
                      ),
                      TextSpan(
                        text: '   Sign Up Now',
                        style: ISetText.body,
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
