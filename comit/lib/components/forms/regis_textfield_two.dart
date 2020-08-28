import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';



class RegisterTextFieldRange extends StatelessWidget {

  Widget icon;
  String title;
  String middleText;
  String attribute;
  String frontHint;
  String backHint;
  final frontValidator;
  final backValidator;
  TextEditingController ctrlFront;
  TextEditingController ctrlBack;
  var keyboardType;

  RegisterTextFieldRange({
    this.attribute,
    @required this.icon,
    @required this.title,
    @required this.frontHint,
    @required this.backHint,
    @required this.ctrlFront,
    @required this.ctrlBack,
    this.middleText = '~',
    this.frontValidator,
    this.backValidator,
    this.keyboardType

  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            icon,
            iWidthLarge,
            Text(
              title,
              style: ISetText.body,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: FormBuilderTextField(
                validators: frontValidator,
                keyboardType: keyboardType,
                controller: ctrlFront,
                attribute: attribute,
                autovalidate: true,
                decoration: InputDecoration(
                    hintText: frontHint,
                  focusColor: mainColor,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: black_500),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainColor),
                  ),

                ),
              ),
            ),
            Text(middleText),
            Flexible(
              flex: 2,
              child: FormBuilderTextField(
                validators: backValidator,
                controller: ctrlBack,
                attribute: attribute,
                autovalidate: true,
                cursorColor: mainColor,
                decoration: InputDecoration(
                    hintText: backHint,
                  focusColor: mainColor,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: black_500),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

}
