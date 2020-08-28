
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realestate/theme/i_set_color.dart';



class HeartButton extends StatelessWidget {

  final num size;

  HeartButton({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: black_50.withOpacity(.8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.heart, color: mainColor, size: size,),
        ),
      ),
    );
  }
}
