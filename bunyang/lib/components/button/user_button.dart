import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';

class UserButton extends StatelessWidget {
  final radius;
  final avatarUrl;

  const UserButton({@required this.radius, @required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: black_50.withOpacity(.5),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: ExactAssetImage(avatarUrl),
      ),
    );
  }
}
