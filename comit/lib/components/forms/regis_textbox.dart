import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class RegisterTextBox extends StatelessWidget {
  final int minLines;
  final String title;
  final String hint;
  final Widget icon;
  final int maxLength;
  TextEditingController ctrl;

  RegisterTextBox({
    this.minLines,
    this.maxLength,
    this.ctrl,
    @required this.title,
    @required this.hint,
    @required this.icon});

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
        Container(
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(border: Border.all(color: black_500)),
          child: TextField(
            controller: ctrl,
            cursorColor: mainColor,
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: minLines,
            maxLength: maxLength,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintText: hint,
              focusColor: mainColor,


            ),
          ),
        ),
      ],
    );
  }
}
