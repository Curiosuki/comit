import 'package:comit/components/button/circle_button.dart';
import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/forms/regis_calcfield.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterSeller3 extends StatefulWidget {
  @override
  _RegisterSeller3State createState() => _RegisterSeller3State();
}

class _RegisterSeller3State extends State<RegisterSeller3>
    with AutomaticKeepAliveClientMixin {

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  TextEditingController weeksCtrl = TextEditingController();
  TextEditingController daysCtrl = TextEditingController();
  TextEditingController hoursCtrl = TextEditingController();
  TextEditingController feesCtrl = TextEditingController();

  int _calculateTotalHours() {
    int weeks = int.parse(weeksCtrl.text);
    int days = int.parse(daysCtrl.text);
    int hours = int.parse(hoursCtrl.text);

    int totalHours = weeks * days * hours;
    return totalHours;
  }

  double _calculateTotalFees() {
    int weeks = int.parse(weeksCtrl.text);
    int days = int.parse(daysCtrl.text);
    int hours = int.parse(hoursCtrl.text);
    double fees = double.parse(feesCtrl.text);

    double totalFees = weeks * days * hours * fees;
    return totalFees;
  }

  var displayTotalFees = 0.0;
  var displayTotalHours = 0;

  void _resetAll() {
    weeksCtrl.text = '';
    daysCtrl.text = '';
    hoursCtrl.text = '';
    feesCtrl.text = '';
    displayTotalFees = 0;
    displayTotalHours = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('Registration Step 3'),
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: FormBuilder(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          ),
          child: ListView(
            padding: EdgeInsets.all(32.0),
            children: <Widget>[
              Center(
                  child: Text(
                'Tuition',
                style: ISetText.headline,
              )),
              iHeightLarge,
              Text(
                'press \'calculate button\' and\ncheck how much you will earn!',
                style: ISetText.textSectionGrey,
                textAlign: TextAlign.center,
              ),
              iDivider,
              iHeightLarge,
              RegisterCalcField(
                  icon: Icon(
                    FontAwesomeIcons.calendarWeek,
                    size: 18,
                    color: mainColor,
                  ),
                  title: 'Total Weeks',
                  hint: 'How many weeks? (ex. 4)',
                  standard: 'week(s)',
                  ctrl: weeksCtrl,
                  onEditingComplete: null,
                  onChanged: null
              ),
              iHeightLarge,
              RegisterCalcField(
                icon: Icon(
                  FontAwesomeIcons.chalkboard,
                  size: 18,
                  color: mainColor,
                ),
                title: 'Days per week',
                hint: 'How many days per week? (ex. 3)',
                standard: 'day(s)',
                ctrl: daysCtrl,
                onEditingComplete: null,
                onChanged: null,
              ),
              iHeightLarge,
              RegisterCalcField(
                icon: Icon(
                  FontAwesomeIcons.clock,
                  size: 18,
                  color: mainColor,
                ),
                title: 'Hours per class',
                hint: 'How many hours per class? (ex. 3)',
                standard: 'hour(s)',
                ctrl: hoursCtrl,
                onEditingComplete: null,
                onChanged: null,              ),
              iHeightLarge,
              RegisterCalcField(
                icon: Icon(
                  FontAwesomeIcons.dollarSign,
                  size: 18,
                  color: mainColor,
                ),
                title: 'Fee per hour',
                hint: 'How much fee per hour? (ex. 30)',
                standard: 'hour(s)',
                ctrl: feesCtrl,
                onEditingComplete: null,
                onChanged: null,
              ),
              iHeightLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: CircleButton(
                      child: Icon(
                        FontAwesomeIcons.calculator,
                        color: mainColor,
                        size: 18,
                      ),
                      onTap: () {
                        setState(() {
                          this.displayTotalHours = _calculateTotalHours();
                          this.displayTotalFees = _calculateTotalFees();
                        });
                      },
                    ),
                  ),
                  iWidthLarge,
                  Flexible(
                    flex: 1,
                    child: CircleButton(
                      child: Icon(
                        FontAwesomeIcons.redo,
                        color: mainColor,
                        size: 18,
                      ),
                      onTap: () {
                        setState(() {
                          _resetAll();
                        });
                      },
                    ),
                  ),
                ],
              ),
              iHeightLarge,
              Container(
                height: 80,
                decoration: iBoxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Total ${hoursCtrl.text} hours',
                        style: ISetText.body,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '\$ $displayTotalFees',
                            style: ISetText.title,
                          ),
                          iHeightSmall,
                          Text(
                            '\$ ${feesCtrl.text} per hour',
                            style: ISetText.textSectionGrey,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              iHeightLarge,
              iDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MainButton(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 3,
                    pressedButton: () => Navigator.pop(context),
                    child: Text(
                      'Prev',
                      style: ISetText.title,
                    ),
                  ),
                  MainButton(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 3,
                    pressedButton: () =>
                        Navigator.pushNamed(context, '/registerseller4'),
                    child: Text(
                      'Next',
                      style: ISetText.title,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
