
import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/forms/regis_textbox_button.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterSeller4 extends StatefulWidget {
  @override
  _RegisterSeller4State createState() => _RegisterSeller4State();
}

class _RegisterSeller4State extends State<RegisterSeller4>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('Registration Step 4'),
        centerTitle: true,
      ),
      body: FormBuilder(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          ),
          child: ListView(
            children: <Widget>[
              Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    'Curriculum',
                    style: ISetText.headline,
                  ),
                  iHeightLarge,
                  Text(
                    'press add button and\ndescribe what you teach weekly',
                    style: ISetText.textSectionGrey,
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              iDivider,
              RegisterTextBoxWithButton(),
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
                        Navigator.pushNamed(context, '/registerseller5'),
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
