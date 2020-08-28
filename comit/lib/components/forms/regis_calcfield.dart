import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class RegisterCalcField extends StatelessWidget {
  final Widget icon;
  final TextEditingController ctrl;
  final String title;
  final String hint;
  final String standard;
  var onEditingComplete;
  var onChanged;


  RegisterCalcField({
      this.ctrl,
      @required this.onEditingComplete,
      @required this.onChanged,
      @required this.icon,
      @required this.title,
      @required this.hint,
      @required this.standard
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: TextField(
                keyboardType: TextInputType.number,
                onEditingComplete: onEditingComplete,
                controller: ctrl,
                onChanged: onChanged,
                decoration:
                    InputDecoration(hintText: hint, focusColor: mainColor),
              ),
            ),
            Flexible(
                flex: 1,
                child: Text(
                  standard,
                  style: ISetText.body,
                ))
          ],
        ),
      ],
    );
  }
}
