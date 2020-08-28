  import 'dart:ui';
import 'package:comit/theme/i_set_color.dart';
import 'package:flutter/material.dart';

class BlurButton extends StatefulWidget {
  @override
  _BlurButtonState createState() => _BlurButtonState();
}

class _BlurButtonState extends State<BlurButton> with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(
              sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            color: Colors.black12,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor:
                backgroundColor.withOpacity(0.2),
                borderRadius:
                BorderRadius.all(Radius.circular(38)),
                onTap: () {
                  try {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.height -
                            MediaQuery.of(context)
                                .size
                                .height /
                                5,
                        duration:
                        Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  } catch (e) {}
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 4,
                      bottom: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'More Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 2),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
