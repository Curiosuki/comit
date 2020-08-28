import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';


class IButtonCircleIcon extends StatelessWidget {

  final onPressed;
  final icon;

  IButtonCircleIcon({@required this.onPressed, @required this.icon});


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: icon,
      shape: CircleBorder(),
      color: mainColor,
    );
  }

}
