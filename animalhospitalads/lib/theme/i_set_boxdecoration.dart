import 'package:flutter/material.dart';
import 'i_set_color.dart';


// BorderRadius
const iBorderRadiusRound = BorderRadius.all(Radius.circular(10));
const iBorderRadiusCircle = BorderRadius.all(Radius.circular(32));

// 모서리 둥근 박스
BoxDecoration iBoxDecoration = BoxDecoration(
  color: backgroundColor,
  borderRadius: iBorderRadiusRound,
  boxShadow: [
    BoxShadow(
        offset: Offset(5, 5),
        color: mainColor.withOpacity(0.2),
        blurRadius: 5),
    BoxShadow(
        offset: Offset(-5, -5),
        color: Color.fromARGB(170, 255, 255, 255),
        blurRadius: 5),
  ],
);


// 원형 박스
BoxDecoration iBoxDecorationCircle = BoxDecoration(
  color: backgroundColor,
  borderRadius: iBorderRadiusCircle,
  boxShadow: [
    BoxShadow(
        offset: Offset(10, 10),
        color: mainColor.withOpacity(0.2),
        blurRadius: 10),
    BoxShadow(
        offset: Offset(-10, -10),
        color: Color.fromARGB(170, 255, 255, 255),
        blurRadius: 10),
  ],
);


