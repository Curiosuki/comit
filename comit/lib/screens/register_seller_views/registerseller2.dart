import 'package:comit/components/button/circle_button.dart';
import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/forms/regis_dropdown.dart';
import 'package:comit/components/forms/regis_mapfield.dart';
import 'package:comit/components/forms/regis_textbox.dart';
import 'package:comit/components/forms/regis_textfield.dart';
import 'package:comit/components/forms/regis_textfield_two.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterSeller2 extends StatefulWidget {
  @override
  _RegisterSeller2State createState() => _RegisterSeller2State();
}

class _RegisterSeller2State extends State<RegisterSeller2> {
  List<Widget> listDateTime = List();

  TextEditingController ctrlProductTitle = TextEditingController();
  TextEditingController ctrlMinNumber = TextEditingController();
  TextEditingController ctrlMaxNumber = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('Registration Step 2'),
        centerTitle: true,
      ),
      body: FormBuilder(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          ),
          child: ListView(
            padding: EdgeInsets.all(32.0),
            children: <Widget>[
              Center(
                child: Text(
                  'Summary',
                  style: ISetText.headline,
                ),
              ),
              iHeightLarge,
              Text(
                'press \'add button\' and\ndescribe what you teach weekly',
                style: ISetText.textSectionGrey,
                textAlign: TextAlign.center,
              ),
              iDivider,
              iHeightLarge,
              RegisterDropDown(
                icon: iCategory,
                title: 'Category',
                dropDown: <DropdownMenuItem<dynamic>>[
                  DropdownMenuItem(
                    child: Text('aa'),
                    value: 'aa',
                  ),
                  DropdownMenuItem(
                    child: Text('bb'),
                    value: 'bb',
                  ),
                  DropdownMenuItem(
                    child: Text('cc'),
                    value: 'cc',
                  ),
                  DropdownMenuItem(
                    child: Text('dd'),
                    value: 'dd',
                  ),
                ],
              ),
              iHeightLarge,
              RegisterTextField(
                ctrl: ctrlProductTitle,
                icon: iChalkboard,
                title: 'Class Title',
                hint: 'Enter your class title',
              ),
              iHeightLarge,
              RegisterTextFieldRange(
                icon: Icon(
                  FontAwesomeIcons.userFriends,
                  size: 18,
                  color: mainColor,
                ),
                title: 'Number of Participants',
                frontHint: 'min',
                frontValidator: [
                  FormBuilderValidators.numeric(),

                ],
                middleText: ' ~ ',
                backHint: 'max',
                backValidator: [
                  FormBuilderValidators.numeric()
                ],
                ctrlBack: null,
                ctrlFront: null,
              ),
              iHeightLarge,
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
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
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          CircleButton(
                            height: 30.0,
                            width: 30.0,
                            onTap: () {
                              listDateTime.add(FormBuilder(
                                child: FormBuilderDateTimePicker(
                                  attribute: null,
                                  decoration: InputDecoration(
                                      hintText: 'Class Date and Time'),
                                ),
                              ));
                              setState(() {});
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              size: 18,
                              color: mainColor,
                            ),
                          ),
                          iWidthLarge,
                          CircleButton(
                            height: 30.0,
                            width: 30.0,
                            onTap: (){
                              setState(() {
                                listDateTime.removeLast();
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              size: 18,
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),


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
                                hintText: 'Class Date and Time  '),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                itemCount: listDateTime.length,
                itemBuilder: (context, index) {
                  Widget widget = listDateTime.elementAt(index);
                  return widget;
                },
              ),
              iHeightLarge,
              RegisterMapField(),
              iHeightLarge,
              RegisterTextBox(
                icon: Icon(
                  FontAwesomeIcons.commentAlt,
                  size: 18,
                  color: mainColor,
                ),
                title: "Tutor's Comment",
                hint: 'Leave a brief message (bubble)',
                minLines: 5,
                maxLength: 60,
              ),
              iHeightLarge,
              RegisterTextBox(
                icon: Icon(
                  FontAwesomeIcons.userFriends,
                  size: 18,
                  color: mainColor,
                ),
                title: "Who is eligible for your class?",
                hint: 'describe',
                minLines: 5,
              ),
              iHeightLarge,
              RegisterTextBox(
                icon: Icon(
                  FontAwesomeIcons.pencilAlt,
                  size: 18,
                  color: mainColor,
                ),
                title: "Class Introduction",
                hint: 'describe',
                minLines: 10,
              ),
              iHeightLarge,
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
                        Navigator.pushNamed(context, '/registerseller3'),
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
