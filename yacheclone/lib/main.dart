import 'package:flutter/material.dart';

import 'custom_timer_painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CountDownTimer(),
    );
  }
}


class CountDownTimer extends StatefulWidget {
  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  AnimationController controller;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network('https://i.gifer.com/7kvp.gif', fit: BoxFit.cover,),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: EdgeInsets.all(60),
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CustomPaint(
                                painter: CustomTimerPainter(
                                  animation: controller,
                                  backgroundColor: Colors.grey.withOpacity(0.2),
                                  color: Colors.green,
                                )),
                          ),
                          Align(
                            alignment: FractionalOffset.center,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  timerString,
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(60),
                    child: AnimatedBuilder(
                        animation: controller,
                        builder: (context, child) {
                          return FloatingActionButton.extended(
                            backgroundColor: Colors.lightGreen,
                              onPressed: () {
                                if (controller.isAnimating)
                                  controller.stop();
                                else {
                                  controller.reverse(
                                      from: controller.value == 0.0
                                          ? 1.0
                                          : controller.value);
                                }
                              },
                              icon: Icon(controller.isAnimating
                                  ? Icons.pause
                                  : Icons.play_arrow),
                              label: Text(
                                  controller.isAnimating ? "Pause" : "Play"));
                        }),
                  ),
                ),
              ],
            );
          }),
    );
  }
}



