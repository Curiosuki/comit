import 'dart:ui';

import 'package:chalkboard/Themes/i_set_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class DrawingArea {
  Offset point;
  Paint areaPaint;

  DrawingArea({this.point, this.areaPaint});
}

class DrawingTool extends StatefulWidget {
  List<DrawingArea> points =[];
  Color selectedColor;
  double strokeWidth;

  DrawingTool(
      {this.points, this.selectedColor = Colors.black, this.strokeWidth = 2.0});

  @override
  _DrawingToolState createState() => _DrawingToolState();
}

class _DrawingToolState extends State<DrawingTool> {


  void selectColor() {
    showDialog(
        context: context,
        child: AlertDialog(
          title: Text('Color Picker'),
          content: SingleChildScrollView(
            child: BlockPicker(
              pickerColor: widget.selectedColor,
              onColorChanged: (color) {
                this.setState(() {
                  widget.selectedColor = color;
                });
              },
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 3, spreadRadius: 1)
          ]),
      child: Row(
        children: [
          Expanded(
              child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 1,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
            ),
            child: Slider(
              min: 0.0,
              max: 10.0,
              label: '${widget.strokeWidth}',
              divisions: 10,
              activeColor: mainColor,
              inactiveColor: mainColor.withOpacity(0.5),
              value: widget.strokeWidth,
              onChanged: (value) {
                this.setState(() {
                  widget.strokeWidth = value;
                });
              },
            ),
          )),
          IconButton(
              icon: Icon(
                LineAwesomeIcons.paint_brush,
                color: widget.selectedColor,
              ),
              onPressed: selectColor),
          IconButton(
              icon: Icon(
                LineAwesomeIcons.eraser,
                color: mainColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                LineAwesomeIcons.undo,
                color: mainColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                LineAwesomeIcons.trash,
                color: mainColor,
              ),
              onPressed: () {
                this.setState(() {
                  widget.points.clear();
                });
              }),
        ],
      ),
    );
  }
}

class CanvasBackground extends StatefulWidget {
  @override
  _CanvasBackgroundState createState() => _CanvasBackgroundState();
}

class _CanvasBackgroundState extends State<CanvasBackground> {
  DrawingTool drawingTool = DrawingTool();
  Color selectedColor;
  double strokeWidth;

  List<DrawingArea> points =[];


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: GestureDetector(
        onPanDown: (details) {
          this.setState(() {
            points.add(DrawingArea(
                point: details.localPosition,
                areaPaint: Paint()
                  ..strokeCap = StrokeCap.round
                  ..isAntiAlias = true
                  ..color = drawingTool.selectedColor
                  ..strokeWidth = drawingTool.strokeWidth));
          });
        },
        onPanUpdate: (details) {
          this.setState(() {
            points.add(DrawingArea(
                point: details.localPosition,
                areaPaint: Paint()
                  ..strokeCap = StrokeCap.round
                  ..isAntiAlias = true
                  ..color = drawingTool.selectedColor
                  ..strokeWidth = drawingTool.strokeWidth));
          });
        },
        onPanEnd: (details) {
          this.setState(() {
            drawingTool.points.add(null);
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: CustomPaint(
            painter: CanvasSetting(
                points: points,
                color: selectedColor,
                strokeWidth: strokeWidth),
          ),
        ),
      ),
    );
  }
}

class CanvasSetting extends CustomPainter {
  DrawingTool drawingTool;
  List<DrawingArea> points;
  Color color;
  double strokeWidth;

  CanvasSetting({this.drawingTool, this.points, this.strokeWidth, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = Colors.amber;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);

    for (int x = 0; x < drawingTool.points.length - 1; x++) {
      if (drawingTool.points[x] != null && drawingTool.points[x + 1] != null) {
        Paint paint = drawingTool.points[x].areaPaint;
        canvas.drawLine(drawingTool.points[x].point, drawingTool.points[x + 1].point, paint);
        canvas.drawLine(drawingTool.points[x].point, drawingTool.points[x + 1].point, paint);
      } else if (drawingTool.points[x] != null && drawingTool.points[x + 1] == null) {
        Paint paint = drawingTool.points[x].areaPaint;
        canvas.drawPoints(PointMode.points, [drawingTool.points[x].point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
