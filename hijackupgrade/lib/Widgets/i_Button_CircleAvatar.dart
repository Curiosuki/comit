import 'package:flutter/material.dart';



class IButtonCircleAvatar extends StatelessWidget {

  num radius;
  Function function;
  String imgUrl;


  IButtonCircleAvatar({@required this.radius, this.function, @required this.imgUrl, });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      focusElevation: 10,
      onPressed: function,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.black38,
        backgroundImage: NetworkImage(imgUrl),
      ),
    );
  }

}