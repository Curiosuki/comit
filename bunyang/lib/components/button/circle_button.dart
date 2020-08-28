import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final child;
  final num width;
  final num height;
  final pressedButton;

  CircleButton({@required this.child, @required this.pressedButton, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        alignment: Alignment.center,
        height: height,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: iBoxDecorationCircle,
        child: child,
      ),
      onTap: pressedButton,
    );
  }
}