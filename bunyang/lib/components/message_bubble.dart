import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import '../theme/i_set_bubble.dart';



class MessageBubble extends StatefulWidget {
  @override
  _MessageBubbleState createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  @override
  Widget build(BuildContext context) {
    return BubbleMessage(
      painter: BubblePainter(),
      child: Container(
        constraints:
        BoxConstraints(maxWidth: 200, minWidth: 50),
        padding: EdgeInsets.symmetric(
            horizontal: 15.0, vertical: 6.0),
        child: TyperAnimatedTextKit(
            speed: Duration(milliseconds: 50),
            onTap: () {
              print("Tap Event");
            },
            text: [
              "Hello, I'm Kate. This class is a web development course for all beginners",
              "With specific curriculum and rich learning materials, you will find it easy to make a web.",
              "Don't be afraid of learning web development. You can do it step by step",
              "For more information, press the 'More Details'button.",
            ],
            textStyle:
            ISetText.body.copyWith(color: black_50),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional
                .topStart // or Alignment.topLeft
        ),
      ),
    );
  }
}
