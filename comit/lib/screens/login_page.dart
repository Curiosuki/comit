import 'package:auto_size_text/auto_size_text.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import '../theme/i_set_size.dart';
import '../components/button/main_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  var ctrlEmail = TextEditingController();
  var ctrlPasswords = TextEditingController();
  bool avEmail = false;
  bool avPasswords = false;

  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();


  void fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
    setState(() {
      avEmail = true;
    });
  }

  String validateEmail(String text){
    if(!text.contains('@')){
      return 'Invalid';
    }else if(text == ''){
      return 'Plase enter your e-mail';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                      child: Image.asset(
                        'assets/images/logo2.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: MainButton(
                        height: 60.0,
                        child: iFacebookF,
                        pressedButton: null,
                      ),
                    ),
                    iWidthLarge,
                    Flexible(
                      flex: 1,
                      child: MainButton(
                        height: 60.0,
                        child: iGoogle,
                        pressedButton: null,
                      ),
                    ),
                  ],
                ),
                iHeightLarge,
                iHeightSmall,
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 18,
                          color: mainColor,
                        ),
                        iWidthMedium,
                        Text(
                          'E-mail',
                          style: ISetText.body,
                        )
                      ],
                    ),
                    iHeightMedium,
                    TextFormField(
                      focusNode: _emailFocusNode,
                      onFieldSubmitted: (_) {
                        fieldFocusChange(
                            context, _emailFocusNode, _passwordFocusNode);
                      },
                      validator: validateEmail,
                      autofocus: false,
                      autovalidate: avEmail,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: ctrlEmail,
                      cursorColor: mainColor,
                      decoration: InputDecoration(
                        hintText: "e.g abc@gmail.com",
                        focusColor: mainColor,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: black_500),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: mainColor),
                        ),
                      ),
                    ),
                    iHeightLarge,
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 18,
                          color: mainColor,
                        ),
                        iWidthMedium,
                        Text(
                          'Passwords',
                          style: ISetText.body,
                        )
                      ],
                    ),
                    iHeightMedium,
                    TextFormField(
                      focusNode: _passwordFocusNode,
                      controller: ctrlPasswords,
                      obscureText: true,
                      validator: (password) {
                        Pattern pattern =
                            r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(password))
                          return 'Passwords must contain at least one letter, at least one number, \nand be longer than six charaters.';
                        else
                          return null;
                      },
                      autovalidate: avPasswords,
                      cursorColor: mainColor,
                      decoration: InputDecoration(
                        hintText: 'Enter your passwords',
                        focusColor: mainColor,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: black_500),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: mainColor),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Text(
                      'Forgot Your Passwords?',
                      style: ISetText.bodyGrey,
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
                  pressedButton: () {
                    if(_formKey.currentState.validate()){
                      Navigator.pushNamed(context, '/homeview');
                    }else{
                      setState(() {
                        avEmail = true;
                        avPasswords = true;

                      });
                    }
                  },
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'No Account?',
                          style: ISetText.bodyGrey,
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
      ),
    );
  }
}
