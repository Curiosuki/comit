import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';

// ignore: must_be_immutable
class RegisterTextBox extends StatefulWidget {
  final int minLines;
  final String title;
  final String hint;
  final Widget icon;
  final int maxLength;
  final onTap;
  TextEditingController ctrl;

  RegisterTextBox({
    this.minLines,
    this.maxLength,
    this.ctrl,
    this.onTap,
    @required this.title,
    @required this.hint,
    @required this.icon});

  @override
  _RegisterTextBoxState createState() => _RegisterTextBoxState();
}

class _RegisterTextBoxState extends State<RegisterTextBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            widget.icon,
            iWidthLarge,
            Text(
              widget.title,
              style: ISetText.body,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(border: Border.all(color: black_500)),
          child: TextField(
            controller: widget.ctrl,
            onTap: widget.onTap,
            cursorColor: mainColor,
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: widget.minLines,
            maxLength: widget.maxLength,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintText: widget.hint,
              focusColor: mainColor,


            ),
          ),
        ),
      ],
    );
  }
}
