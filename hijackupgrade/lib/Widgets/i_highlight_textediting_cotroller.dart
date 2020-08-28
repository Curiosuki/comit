import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';

class HighlightTextEditingController extends TextEditingController {
  HighlightTextEditingController();

  var startIdx;
  var endIdx;

  @override
  TextSpan buildTextSpan({TextStyle style, bool withComposing}) {
    if (startIdx == null || endIdx == null) {
      return TextSpan(style: style, text: text);
    }

    List<TextSpan> children = [];

    children.add(TextSpan(text: text.substring(0, startIdx), style: style));
    children.add(
      TextSpan(
        text: text.substring(startIdx, endIdx),
        style: TextStyle(
            //backgroundColor: mainColor.withOpacity(0.3)
            backgroundColor: Colors.yellowAccent

        ),
      ),
    );
    children.add(TextSpan(text: text.substring(endIdx), style: style));

    return TextSpan(style: style, children: children);
  }
}
