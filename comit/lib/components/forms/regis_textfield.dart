import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterTextField extends StatelessWidget {
  final String title;
  final String hint;
  final Widget icon;
  final String attribute;
  final obscureText;
  final keyboardType;
  final TextEditingController ctrl;
  final validators;
  GlobalKey<FormBuilderState> formKey;

  RegisterTextField({
      @required this.ctrl,
      @required this.title,
      @required this.icon,
      @required this.hint,
      this.attribute,
      this.obscureText = false,
      this.keyboardType,
      this.validators,
      this.formKey
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
        FormBuilderTextField(
          key: formKey,
          maxLength: 70,
          validators: validators,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: 1,
          controller: ctrl,
          attribute: attribute,
          cursorColor: mainColor,
          decoration: InputDecoration(
            hintText: hint,
            focusColor: mainColor,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: black_500),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: mainColor),
            ),
          ),

        ),
      ],
    );
  }
}
