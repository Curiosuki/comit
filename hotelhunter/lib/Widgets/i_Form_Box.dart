import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';

// ignore: must_be_immutable
class IFormBox extends StatelessWidget {
  final hintText;
  final icon;
  final ctrl;
  final minLines;
  final maxLines;
  final borderRadius;
  final keyboardType;

  IFormBox(
      {this.hintText,
      this.icon,
      this.ctrl,
      this.minLines,
      this.maxLines,
      this.borderRadius,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: maxLines,
      controller: ctrl,
      cursorColor: mainColor,
      decoration: InputDecoration(
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: iBorderRadius,
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: mainColor),
      ),
    );
  }
}
