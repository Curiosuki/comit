import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';

// ignore: must_be_immutable
class IFormBox extends StatelessWidget {
  final hintText;
  final icon;
  final ctrl;
  final minLines;
  final maxLines;
  final borderRadius;
  final keyboardType;
  final onChanged;

  IFormBox(
      {this.hintText,
      this.icon,
      this.ctrl,
      this.minLines,
      this.maxLines,
      this.borderRadius,
      this.keyboardType,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
        hintStyle: TextStyle(color: black_500),
      ),
    );
  }
}
