import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InnerShadowButton extends StatelessWidget {
  final child;
  final height;
  final width;
  final padding;
  final onTap;

  const InnerShadowButton(
      {this.child, this.height, this.width, this.onTap, this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          padding: padding,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: iBorderRadiusRound,
              boxShadow: [
                BoxShadow(
                  color: mainColor.withOpacity(.3),
                  offset: Offset(-3, -3),
                  blurRadius: 0
                ),
                BoxShadow(
                  color: black_50,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 5,
                  //spreadRadius: 10
                ),
              ]),
          child: child),
    );
  }
}
