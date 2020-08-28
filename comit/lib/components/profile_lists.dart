import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileLists extends StatelessWidget {
  final icon;
  final text;

  const ProfileLists({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 9,
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: icon,
              ),
              iWidthLarge,
              Flexible(
                flex: 9,
                child: Text(
                  text,
                  style: ISetText.bodyblack,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Icon(
            FontAwesomeIcons.chevronRight,
            color: black_400,
          ),
        ),
      ],
    );
  }
}
