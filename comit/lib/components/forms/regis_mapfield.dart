import 'package:comit/components/button/circle_button.dart';
import 'package:comit/main.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterMapField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.mapMarkerAlt,
              size: 18,
              color: mainColor,
            ),
            iWidthLarge,
            Text(
              'Location',
              style: ISetText.body,
            ),
            iWidthLarge,
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 5,
              child: FormBuilder(
                child: FormBuilderTextField(
                  attribute: null,
                  decoration:
                  InputDecoration(hintText: 'place and location',
                    focusColor: mainColor,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: black_500),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),),
                ),
              ),
            ),
            Flexible(
                child: CircleButton(
                  onTap: null,
                  child: Icon(FontAwesomeIcons.searchLocation, color: mainColor,),
                ))
          ],
        ),
      ],
    );
  }
}
