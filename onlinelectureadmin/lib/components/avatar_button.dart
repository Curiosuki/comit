import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';

class AvatarButton extends StatelessWidget {
  final radius;
  final avatarUrl;

  const AvatarButton({@required this.radius, @required this.avatarUrl});

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
