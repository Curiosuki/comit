import 'package:comit/components/button/circle_button.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_string.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';


class Tab2View extends StatefulWidget {
  @override
  _Tab2ViewState createState() => _Tab2ViewState();
}

class _Tab2ViewState extends State<Tab2View> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Theme(
        child: Stepper(
          //type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep >= 3) return;
            setState(() {
              _currentStep += 1;
            });
          },
          onStepCancel: () {
            if (_currentStep <= 0) return;
            setState(() {
              _currentStep -= 1;
            });
          },
          controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleButton(
                  child: iUpArrow,
                  onTap: onStepCancel,
                ),
                iWidthMedium,
                CircleButton(
                  child: iDownArrow,
                  onTap: onStepContinue,
                ),
              ],
            );
          },
          steps: <Step>[
            Step(
              isActive: true,
              title: Text(
                '1st Week',
                style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
              ),
              //subtitle: Text('기초 문법 수업'),
              content: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset('assets/images/programming_1.jpg'),),
                  ),
                  Text(
                    dummyTextE,
                    style: ISetText.textSectionGrey,
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                '2nd Week',
                style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
              ),
              content: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset('assets/images/programming_2.jpg'),),
                  ),
                  Text(
                    dummyTextE,
                    style: ISetText.textSectionGrey,
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                '3rd Week',
                style: ISetText.body,
              ),
              content: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset('assets/images/programming_3.jpg'),),
                  ),
                  Text(
                    dummyTextE,
                    style: ISetText.textSectionGrey,
                  ),
                ],
              ),
            ),
            Step(
              title: Text(
                '4th Week',
                style: ISetText.body,
              ),
              content: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset('assets/images/programming_3.jpg'),),
                  ),
                  Text(
                    dummyTextE,
                    style: ISetText.textSectionGrey,
                  ),
                ],
              ),
            ),
          ],
        ),
        data: ThemeData(primaryColor: mainColor),
      ),
    );
  }
}
