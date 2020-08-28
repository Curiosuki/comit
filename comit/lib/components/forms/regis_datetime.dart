import 'package:comit/components/button/circle_button.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterDateTime extends StatelessWidget {
  List<Widget> list = List();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.calendar,
              size: 18,
              color: mainColor,
            ),
            iWidthLarge,
            Text(
              'Date & Time',
              style: ISetText.body,
            ),
            iWidthLarge,
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 4,
              child: FormBuilder(
                child: FormBuilderDateTimePicker(
                  attribute: null,
                  decoration: InputDecoration(
                    hintText: 'Class Date and Time',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: black_400),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainColor),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: CircleButton(
                  onTap: () {
                    list.add(Flexible(
                      flex: 4,
                      child: FormBuilder(
                        child: FormBuilderDateTimePicker(
                          attribute: null,
                          decoration: InputDecoration(
                            hintText: 'Class Date and Time',
                            focusColor: mainColor,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: black_400),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: mainColor),
                            ),
                          ),
                        ),
                      ),
                    ));
                  },
                  child: Icon(
                    FontAwesomeIcons.plus,
                    size: 18,
                    color: mainColor,
                  ),
                )),
            Flexible(
                flex: 1,
                child: CircleButton(
                  onTap: null,
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 18,
                    color: mainColor,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
