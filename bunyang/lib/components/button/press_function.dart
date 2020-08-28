import 'package:flutter/cupertino.dart';
import 'inner_shadow_button.dart';
import 'outer_shadow_button.dart';

Widget pressButton(child, {bool selected = false}) {
  return selected
      ? InnerShadowButton(
        child: child,
      )
      : OuterShadowButton(child: child);
}
