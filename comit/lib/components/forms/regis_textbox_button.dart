import 'package:comit/components/button/camera_button.dart';
import 'package:comit/components/button/circle_button.dart';
import 'package:comit/components/forms/regis_textbox.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RegisterTextBoxWithButton extends StatefulWidget {

  @override
  _RegisterTextBoxWithButtonState createState() => _RegisterTextBoxWithButtonState();
}

class _RegisterTextBoxWithButtonState extends State<RegisterTextBoxWithButton> {
  List<Widget> list = List();

  TextEditingController ctrl = TextEditingController();

  void _resetAll() {
    ctrl.text = '';
  }

  Widget _addUI() {
    list.add(Column(
      children: <Widget>[
        RegisterTextBox(
          icon: Icon(FontAwesomeIcons.calendarWeek, size: 12, color: mainColor,),
          title: 'Weekly Syllabus',
          hint: 'describe...',
          minLines: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: CircleButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: mainColor,
                  size: 18,
                ),
                onTap: (){
                  _addUI();
                  setState(() {

                  });
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: CameraButton(),
            ),
            Flexible(
              flex: 1,
              child: CircleButton(
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: mainColor,
                  size: 18,
                ),
                onTap: (){
                  list.removeLast();
                  setState(() {

                  });
                },
              ),
            ),
          ],
        ),
        iDivider
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RegisterTextBox(
          icon: Icon(FontAwesomeIcons.calendarWeek, size: 12, color: mainColor,),
          title: 'Weekly Schedule',
          hint: 'describe...',
          minLines: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: CircleButton(
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: mainColor,
                  size: 18,
                ),
                onTap: (){
                  _addUI();
                  setState(() {

                  });
                  },
              ),
            ),
            Flexible(
              flex: 1,
              child: CameraButton(),
            ),
            Flexible(
              flex: 1,
              child: CircleButton(
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: mainColor,
                  size: 18,
                ),
                onTap: (){
                  list.removeLast();
                  setState(() {

                  });
                },
              ),
            ),
          ],
        ),
        iDivider,
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            Widget widget = list.elementAt(index);
            return widget;
          },
        ),
        iHeightLarge
      ],
    );
  }
}
