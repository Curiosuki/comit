import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:flutter/material.dart';



class HeartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: black_50.withOpacity(.8),
      ),
      child: InkWell(
        borderRadius: iBorderRadiusCircle,
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: iHeart,
        ),
      ),
    );
  }
}
