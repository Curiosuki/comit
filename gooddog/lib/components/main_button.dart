import 'package:flutter/material.dart';
import 'package:gooddog/theme/i_set_boxdecoration.dart';

class MainButton extends StatelessWidget {

  final child;
  final width;
  final height;
  final pressedButton;

  MainButton({
    @required this.child,
    @required this.pressedButton,
    this.width,
    this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        alignment: Alignment.center,
        height: height,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: iBoxDecoration,
        child: child,
      ),
      onTap: pressedButton,
    );
  }
}
