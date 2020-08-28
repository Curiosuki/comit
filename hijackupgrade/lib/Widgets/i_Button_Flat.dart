import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';




class IButtonFlat extends StatelessWidget {

  Function function;
  String title;

  IButtonFlat({this.function, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: iBorderRadius,
        ),
        color: mainColor,
        onPressed: function,
        child: Text(title, style: ITextStyle.subTitleWhite,),
      ),
    );
  }
}
