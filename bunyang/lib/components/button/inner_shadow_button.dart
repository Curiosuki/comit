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
              color: Colors.transparent,
              borderRadius: iBorderRadiusRound,
              boxShadow: [
                BoxShadow(
                  color: mainColor.withOpacity(.2),
                  offset: Offset(0, 0),
                  //blurRadius: 5
                ),
                BoxShadow(
                  color: black_50,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 5,
                  //spreadRadius: 10
                ),
              ]),
          child: child),
    );
  }
}
