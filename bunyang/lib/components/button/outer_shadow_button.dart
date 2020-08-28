import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OuterShadowButton extends StatelessWidget {
  final child;
  final height;
  final width;
  final padding;
  final onTap;

  const OuterShadowButton(
      {this.child, this.height, this.width, this.padding, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          padding: padding,
          decoration: iBoxDecoration,
          child: child),
    );
  }
}
