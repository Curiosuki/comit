import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, left: 8),
      decoration: iBoxDecoration,
      child: TextField(
        cursorColor: mainColor,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: mainColor),
          hintText: 'Search for your class',
          prefixIcon: Icon(FontAwesomeIcons.search, color: mainColor),
          border: InputBorder.none,
          //contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
