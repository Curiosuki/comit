import 'package:flutter/material.dart';


class CustomRoundedImage extends StatelessWidget {
  final String images;
  final num height;
  final num width;



  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        images,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }


  CustomRoundedImage(this.images, this.height, this.width);
}

