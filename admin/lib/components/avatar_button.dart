import 'package:admin/theme/i_set_color.dart';
import 'package:flutter/material.dart';

class AvatarButton extends StatelessWidget {
  final radius;
  final avatarUrl;
  final onTap;

  AvatarButton(this.radius, this.avatarUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: ExactAssetImage(avatarUrl),
      ),
    );
  }
}
