
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bunyang/theme/i_set_color.dart';
import 'package:bunyang/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import '../theme/i_set_margin.dart';
import '../components/button/main_button.dart';
import '../components/user_textfield.dart';
import 'policy_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f3f6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 80,
                ),
                child: AutoSizeText(
                  'Sign Up',
                  maxLines: 1,
                  style: ISetText.display4,
                ),
              ),
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
              iHeightLarge,
              IUserTextField(
                obscureText: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: mainColor,
                ),
                hintText: 'Confirm Your Passwords',
              ),
              iHeightLarge,
              Text(
                'Birthday',
                style: ISetText.body,
              ),
              iHeightSmall,
              IUserTextField(
                obscureText: false,
                prefixIcon: Icon(
                  Icons.date_range,
                  color: mainColor,
                ),
                hintText: 'Enter Your Birthday',
              ),
              iHeightLarge,
              Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: mainColor,
                    checkColor: black_50,
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() => isChecked = value);
                    },
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      // OnPressed 함수에 넣기
                      context,
                      MaterialPageRoute(builder: (context) => Policy()),
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Agreement to Our Policy.",
                              style: ISetText.body
                                  .copyWith(color: fontColor_500),
                            ),
                            TextSpan(
                              text: ' See More',
                              style: ISetText.body,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              iHeightLarge,
              MainButton(
                height: 60.0,
                  child: Text(
                    'Join Now',
                    style: ISetText.title,
                  ),
                  pressedButton: () => Navigator.pushNamed(context, '/homeview'),),
            ],
          ),
        ),
      ),
    );
  }
}
