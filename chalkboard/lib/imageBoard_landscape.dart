import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:chalkboard/Themes/i_set_color.dart';
import 'package:chalkboard/Themes/i_set_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:painter/painter.dart';

class ImageBoardLandScape extends StatefulWidget {
  @override
  _ImageBoardLandScapeState createState() => _ImageBoardLandScapeState();
}

class _ImageBoardLandScapeState extends State<ImageBoardLandScape> {
  bool _finished;
  int currentIndex = 0;
  PainterController _controller;
  List<Asset> images = List<Asset>();
  String _error;

  Widget buildImageList() {
    if (images != null)
      return ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            Asset asset = images[index];
            return ListTile(
                leading: CircleAvatar(
                    backgroundColor: mainColor,
                    child: Text('${index+1}', style: ITextStyle.titleWhite,)),
                title: AssetThumb(
                  asset: asset,
                  width: images[index].originalWidth,
                  height: images[index].originalHeight,
                ));
          });

//        GridView.count(
//        crossAxisCount: 3,
//        children: List.generate(images.length, (index) {
//          Asset asset = images[index];
//          return AssetThumb(
//            asset: asset,
//            width: 300,
//            height: 300,
//          );
//        }),
//      );
    else
      return Container(color: Colors.white);
  }

  Future<void> loadAssets() async {
    setState(() {
      images = List<Asset>();
    });

    List<Asset> resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
          maxImages: 300,
          materialOptions: MaterialOptions(
            actionBarTitle: "Pictures",
            allViewTitle: "All view title",
            actionBarColor: "#7135F7",
            actionBarTitleColor: "#ffffff",
            lightStatusBar: false,
            statusBarColor: '#abcdef',
            startInAllView: true,
            selectCircleStrokeColor: "#000000",
            selectionLimitReachedText: "You can't select any more.",
          )
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      if (error == null) _error = 'No Error Dectected';
    });
  }

  @override
  void initState() {
    super.initState();
    _finished = false;
    _controller = _Controller();
  }

  PainterController _Controller() {
    PainterController controller = PainterController();
    controller.thickness = 5.0;
    controller.backgroundColor = Colors.white;
    return controller;
  }

  List<File> _images = [];
  final picker = ImagePicker();

  Future getCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _images.insert(currentIndex, File(pickedFile.path));
    });
    Navigator.of(context).pop();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _images.insert(currentIndex, File(pickedFile.path));
    });
    Navigator.of(context).pop();
  }



  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.landscapeLeft,
//      DeviceOrientation.landscapeRight,
//    ]);
//    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    List<Widget> actions;
    if (_finished) {
      actions = <Widget>[
        IconButton(
          icon: Icon(Icons.close),
          tooltip: 'Painting',
          onPressed: () => setState(() {
            _finished = false;
            _controller = _Controller();
          }),
        ),
      ];
    } else {
      actions = <Widget>[
        IconButton(
          icon: Icon(IcoFontIcons.uiImage),
          onPressed: loadAssets,
          tooltip: 'Image',
        ),
        IconButton(
            icon: Icon(
              IcoFontIcons.undo,
            ),
            tooltip: 'Undo',
            onPressed: () {
              if (_controller.isEmpty) {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => Text('Nothing to undo'));
              } else {
                _controller.undo();
              }
            }),
        IconButton(
            icon: Icon(IcoFontIcons.uiDelete),
            tooltip: 'Clear',
            onPressed: _controller.clear),
        IconButton(
            icon: Icon(IcoFontIcons.checked),
            onPressed: () => _show(_controller.finish(), context)),
      ];
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoom Board'),
        //centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: actions,
      ),
      body: Row(
        children: [
          Expanded(

              flex: 2,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 65,
                    padding: EdgeInsets.all(8),
                    color: Colors.deepPurpleAccent.withOpacity(0.2),
                    child: Text("Press the 'Image Button' and add your pictures", style: ITextStyle.subTitle,),
                  ),
                  Expanded(child: buildImageList()),
                ],
              )),
//          Expanded(
//              flex: 2,
//              child: ListView.builder(
//                  itemBuilder: (context, index) => ListTile(
//                        // leading: Text('${index + 1}'),
//                        trailing: IconButton(
//                          onPressed: () {
//                            _showChoiceDialog(context);
//                            setState(() {
//                              currentIndex = index;
//                            });
//                          },
//                          icon: Icon(
//                            IcoFontIcons.camera,
//                            color: mainColor,
//                          ),
//                        ),
//                        title: _images.length <= index
//                            ? Text('Select Your Picture')
//                            : Image.file(_images[index]),
//                      ))),
          // iVerticalDivider,
          Expanded(
            flex: 3,
            child: Column(
              children: [
                DrawBar(_controller),
                Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 2,
                      child: Painter(_controller)),
                ),
              ],
            ),
          )
//      Expanded(
//        flex: 3,
//        child: Column(
//          children: [
//            DrawBar(_controller),
//            Expanded(child: Painter(_controller)),
//          ],
//        ),
//      ),
        ],
      ),
    );
  }

  void _show(PictureDetails picture, BuildContext context) {
    setState(() {
      _finished = true;
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: mainColor,
          title: const Text('View'),
          centerTitle: true,
        ),
        body: Container(
            alignment: Alignment.center,
            child: FutureBuilder<Uint8List>(
              future: picture.toPNG(),
              builder:
                  (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Image.memory(snapshot.data);
                    }
                    break;
                  default:
                    return Container(
                        child: FractionallySizedBox(
                          widthFactor: 0.1,
                          child: AspectRatio(
                              aspectRatio: 1.0, child: CircularProgressIndicator()),
                          alignment: Alignment.center,
                        ));
                }
              },
            )),
      );
    }));
  }
}

class DrawBar extends StatelessWidget {
  final PainterController _controller;

  DrawBar(this._controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.all(8),
      color: Colors.deepPurpleAccent.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Text(
                          'Thickness',
                          style: ITextStyle.body,
                        ),
                        Expanded(
                          child: Slider(
                            value: _controller.thickness,
                            onChanged: (double value) => setState(() {
                              _controller.thickness = value;
                            }),
                            min: 1.0,
                            max: 20.0,
                            activeColor: mainColor,
                            inactiveColor: Colors.deepPurpleAccent.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ));
              })),
          StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return RotatedBox(
                    quarterTurns: _controller.eraseMode ? 2 : 0,
                    child: IconButton(
                        icon: Icon(
                          IcoFontIcons.eraserAlt,
                          color: mainColor,
                        ),
                        tooltip: (_controller.eraseMode ? 'Disable' : 'Enable') +
                            ' eraser',
                        onPressed: () {
                          setState(() {
                            _controller.eraseMode = !_controller.eraseMode;
                          });
                        }));
              }),
          ColorPickerButton(_controller, false),
          ColorPickerButton(_controller, true),
        ],
      ),
    );
  }
}

class ColorPickerButton extends StatefulWidget {
  final PainterController _controller;
  final bool _background;

  ColorPickerButton(this._controller, this._background);

  @override
  _ColorPickerButtonState createState() => _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(_iconData, color: _color),
        tooltip: widget._background
            ? 'Change background color'
            : 'Change draw color',
        onPressed: _pickColor);
  }

  void _pickColor() {
    Color pickerColor = _color;

    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.drag_handle,
                color: mainColor,
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: ColorPicker(
                  pickerColor: pickerColor,
                  onColorChanged: (Color c) => pickerColor = c,
                )),
          ],
        )).then((_) {
      setState(() {
        _color = pickerColor;
      });
    });
  }

  Color get _color => widget._background
      ? widget._controller.backgroundColor
      : widget._controller.drawColor;

  IconData get _iconData =>
      widget._background ? Icons.format_color_fill : IcoFontIcons.pencilAlt2;

  set _color(Color color) {
    if (widget._background) {
      widget._controller.backgroundColor = color;
    } else {
      widget._controller.drawColor = color;
    }
  }
}
