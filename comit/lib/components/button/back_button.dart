import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class BackArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: black_50.withOpacity(.8),
      ),
      child: InkWell(
        borderRadius: iBorderRadiusCircle,
        onTap: () => Navigator.pop(context),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(FontAwesomeIcons.chevronLeft, color: mainColor,),
        ),
      ),
    );
  }
}