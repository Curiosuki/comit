import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: mainColor),
          hintText: 'Search your class',
          prefixIcon: Icon(FontAwesomeIcons.search, color: mainColor),
          border: InputBorder.none,
          //contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
