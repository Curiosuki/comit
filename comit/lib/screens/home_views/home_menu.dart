import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../theme/i_set_size.dart';
import '../../components/button/press_function.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: MediaQuery.of(context).size.height/10,
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: pressButton(
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/homeview'),
                  child: Container(
                    height: 30,
                    child: iHome,
                  ),
                ),
                selected: false),
          ),
          iWidthLarge,
          Expanded(
            child: pressButton(
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/profileview'),
                child: Container(
                  height: 50,
                  child: iUser,
                ),
              ),
              selected: false,
            ),
          ),
          iWidthLarge,
          Expanded(
            child: pressButton(
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/wishlists'),
                child: Container(
                  height: 50,
                  child: iHeart,
                ),
              ),
              selected: false,
            ),
          ),
          iWidthLarge,
          Expanded(
            child: pressButton(
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/chatlists'),
                child: Container(
                  height: 50,
                  child: iComment,
                ),
              ),
              selected: false,
            ),
          ),
          iWidthLarge,
          Expanded(
            child: pressButton(
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/mapview'),
                child: Container(
                  height: 50,
                  child: Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: mainColor,
                  ),
                ),
              ),
              selected: false,
            ),
          ),
        ],
      ),
    );
  }
}
