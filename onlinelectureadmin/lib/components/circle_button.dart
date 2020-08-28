import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/theme/i_set_boxdecoration.dart';

class CircleButton extends StatelessWidget {

  final child;
  final width;
  final height;
  final onTap;

  CircleButton({
    @required this.child,
    @required this.onTap,
    this.width = 40.0,
    this.height = 40.0
  });

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
      onTap: onTap,
    );
  }
}
