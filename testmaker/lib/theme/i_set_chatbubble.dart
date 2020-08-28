import 'package:flutter/material.dart';


enum _TailDirection { right, left }

class ChatBubblePainter extends CustomPainter {
  ChatBubblePainter({this.color, this.isSentByMe});

  final Color color;
  final bool isSentByMe;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    Path paintBubbleTail(_TailDirection direction) {
      double startingPoint;
      double point;
      double endPoint;
      double curvePoint;
      if (direction == _TailDirection.right) {
        startingPoint = size.width - 5;
        point = size.width + 10;
        endPoint = size.width + 3;
        curvePoint = size.width;
      }
      if (direction == _TailDirection.left) {
        startingPoint = 5;
        point = -10;
        endPoint = -3;
        curvePoint = 0;
      }
      return Path()
        ..moveTo(startingPoint, size.height)
        ..lineTo(point, size.height)
        ..quadraticBezierTo(endPoint, size.height, curvePoint, size.height - 10);
    }

    final RRect bubbleBody = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), Radius.circular(5.0));
    final Path bubbleTail = isSentByMe
        ? paintBubbleTail(_TailDirection.right)
        : paintBubbleTail(_TailDirection.left);

    canvas.drawRRect(bubbleBody, paint);
    canvas.drawPath(bubbleTail, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}