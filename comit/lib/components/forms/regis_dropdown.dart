import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';



class RegisterDropDown extends StatefulWidget {

  Widget icon;
  String title;
  String attribute;
  List<DropdownMenuItem> dropDown;


  RegisterDropDown({
    @required this.icon,
    @required this.title,
    @required this.dropDown,
    this.attribute,
  });

  @override
  _RegisterDropDownState createState() => _RegisterDropDownState();
}

class _RegisterDropDownState extends State<RegisterDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            widget.icon,
            iWidthLarge,
            Text(
              widget.title,
              style: ISetText.body,
            ),
          ],
        ),
        FormBuilder(
          child: FormBuilderDropdown(
            attribute: widget.attribute,
            items: widget.dropDown,
          ),

        ),
      ],
    );
  }
}
