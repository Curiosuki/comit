import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theme/i_set_margin.dart';
import 'button/press_function.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: pressButton(
              Container(
                height: 50,
                child: Center(
                    child: iHome),
              ),
              selected: true),
        ),
        iWidthLarge,
        Expanded(
          child: pressButton(
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profileview'),
              child: Container(
                height: 50,
                child: Center(
                    child: iUser),
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
                child: Center(
                    child: iHeart),
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
                child: Center(
                    child: iComment),
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
                child: Center(
                    child: Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  color: mainColor,
                )),
              ),
            ),
            selected: false,
          ),
        ),
      ],
    );
  }
}
