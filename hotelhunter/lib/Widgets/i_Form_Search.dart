import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';

class IFormSearch extends StatelessWidget {
  final hintText;
  final ctrl;
  final minLines;
  final maxLines;

  IFormSearch({this.hintText, this.ctrl, this.minLines, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      controller: ctrl,
      cursorColor: mainColor,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: mainColor,),
        hintText: hintText,
        hintStyle: TextStyle(color: mainColor),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor),
          borderRadius:  BorderRadius.circular(30.0),
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor),
          borderRadius:  BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}


