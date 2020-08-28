import 'package:auto_size_text/auto_size_text.dart';
import 'package:comit/components/forms/regis_textfield.dart';
import 'package:comit/components/forms/regis_textfield_two.dart';
import 'package:comit/components/forms/regis_userPhoto.dart';
import 'package:comit/main.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../theme/i_set_size.dart';
import '../../components/button/main_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: FormBuilder(
        key: _formKey,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 40,
                  ),
                  child: AutoSizeText(
                    'Sign Up',
                    maxLines: 1,
                    style: ISetText.display4,
                  ),
                ),
                RegisterUserPhoto(),
                iHeightLarge,
                RegisterTextFieldRange(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    size: 18,
                    color: mainColor,
                  ),
                  title: 'Name',
                  frontHint: 'First name',
                  frontValidator: [
                    FormBuilderValidators.maxLength(70, errorText: 'Too long'),

                  ],
                  middleText: '  ',
                  backHint: 'Last name',
                  backValidator: [
                    FormBuilderValidators.maxLength(70, errorText: 'Too long')
                  ],
                  ctrlBack: null,
                  ctrlFront: null,
                ),

                iHeightLarge,
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.calendar,
                          size: 18,
                          color: mainColor,
                        ),
                        iWidthLarge,
                        Text(
                          'Birthday',
                          style: ISetText.body,
                        ),
                        iWidthLarge,
                      ],
                    ),
                    FormBuilderDateTimePicker(
                      attribute: null,
                      inputType: InputType.date,
                      format: DateFormat("yyyy-MM-dd"),
                      decoration: InputDecoration(
                        hintText: 'Birthday',
                        focusColor: mainColor,
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: black_400),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                          BorderSide(color: mainColor),
                        ),
                      ),
                    ),
                  ],
                ),
                iHeightLarge,
                RegisterTextField(
                  ctrl: null,
                  icon: Icon(Icons.phone_in_talk, size: 18, color: mainColor,),
                  title: 'Phone',
                  hint: 'Please enter your phone number',
                  keyboardType: TextInputType.phone,
                ),
                iHeightLarge,
                RegisterTextField(
                  ctrl: null,
                  icon: iEmail,
                  title: 'E-mail',
                  hint: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  validators: [
                    FormBuilderValidators.email(),
                    FormBuilderValidators.maxLength(70, errorText: 'Too long')
                  ],
                ),
                iHeightLarge,
                RegisterTextField(
                  ctrl: null,
                  obscureText: true,
                  icon: iPassword,
                  title: 'Passwords',
                  hint: 'Enter your passwords',
                ),
                iHeightLarge,
                RegisterTextField(
                  ctrl: null,
                  obscureText: true,
                  icon: iPassword,
                  title: 'Passwords',
                  hint: 'Confirm your passwords',
                ),
                iHeightLarge,
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/policy'),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.fileContract, size: 18, color: mainColor,),
                      iWidthLarge,
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Agreement to Our Policy.",
                              style: ISetText.body,
                            ),
                            TextSpan(
                              text: ' (See More)',
                              style: ISetText.bodyGrey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                FormBuilderCheckbox(
                  activeColor: mainColor,
                  attribute: 'accept_terms',
                  label: Text(
                    "I have read and agree to the terms and conditions", style: ISetText.textSectionGrey,),
                  validators: [
                    FormBuilderValidators.requiredTrue(
                      errorText:
                      "You must accept terms and conditions to continue",
                    ),
                  ],
                ),
                iHeightLarge,
                MainButton(
                  height: 60.0,
                  child: Text('Submit and Let\'comit', style: ISetText.title,),
                  pressedButton: ()  {
                    Navigator.popAndPushNamed(context, '/homeview');
                  },

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
