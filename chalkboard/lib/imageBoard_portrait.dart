import 'dart:io';
import 'package:chalkboard/zoom_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_recording/flutter_screen_recording.dart';
import 'package:flutter_speed_dial_material_design/flutter_speed_dial_material_design.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quiver/async.dart';
import 'Themes/i_set_color.dart';

class ImageBoardPortrait extends StatefulWidget {
  @override
  _ImageBoardPortraitState createState() => _ImageBoardPortraitState();
}

class _ImageBoardPortraitState extends State<ImageBoardPortrait> {
  List<Asset> images = List<Asset>();
  String _error;
  int currentIndex = 0;
  SpeedDialController _controller = SpeedDialController();

  Widget buildImageList() {
    if (images != null)
      return ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            Asset asset = images[index];
            return AssetThumb(asset: asset, width: asset.originalWidth, height: asset.originalHeight);
          });
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
            allViewTitle: "Gallery",
            actionBarColor: "#030e2d",
            actionBarTitleColor: "#ffffff",
            lightStatusBar: false,
            statusBarColor: '#abcdef',
            startInAllView: true,
            selectCircleStrokeColor: "#000000",
            selectionLimitReachedText: "You can't select any more.",
          ));
    } on Exception catch (e) {
      error = e.toString();
    }
    if (!mounted) return;

    setState(() {
      images = resultList;
      if (error == null) _error = 'No Error Dectected';
    });
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


  // Screen Recorder
  bool recording = false;
  int _time = 0;

  requestPermissions() async {
    await PermissionHandler().requestPermissions([
      PermissionGroup.storage,
      PermissionGroup.photos,
      PermissionGroup.microphone,
    ]);
  }

  @override
  void initState() {
    super.initState();
    requestPermissions();
    startTimer();
  }

  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: 1000),
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() => _time++);
    });

    sub.onDone(() {
      print("Done");
      sub.cancel();
    });
  }

  startScreenRecord(bool audio) async {
    bool start = false;

    if (audio) {
      start = await FlutterScreenRecording.startRecordScreenAndAudio("Title");
    } else {
      start = await FlutterScreenRecording.startRecordScreen("Title");
    }

    if (start) {
      setState(() => recording = !recording);
    }

    return start;
  }

  stopScreenRecord() async {
    String path = await FlutterScreenRecording.stopRecordScreen;
    setState(() {
      recording = !recording;
    });
    print("Opening video");
    print(path);
    OpenFile.open(path);
  }

  Widget _buildFloatingActionButton() {
    final TextStyle customStyle =
    TextStyle(inherit: false, color: Colors.black);
    final icons = [
      SpeedDialAction(
        child: Icon(
          LineAwesomeIcons.picture_o,
          color: mainColor,
        ),
        label: Text('Images', style: customStyle),
      ),
      SpeedDialAction(
          child: Icon(
            LineAwesomeIcons.file_pdf_o,
            color: mainColor,
          ),
          label: Text('PDF', style: customStyle)),
      SpeedDialAction(
          child: Icon(
            LineAwesomeIcons.file_image_o,
            color: mainColor,
          ),
          label: Text('OCR', style: customStyle)),
      SpeedDialAction(
          child: Icon(
            LineAwesomeIcons.file_text_o,
            color: mainColor,
          ),
          label: Text('Text', style: customStyle)),
      SpeedDialAction(
          child: Icon(
            LineAwesomeIcons.file,
            color: mainColor,
          ),
          label: Text('Blank', style: customStyle)),
    ];

    return SpeedDialFloatingActionButton(
      actions: icons,
      childOnFold: Icon(LineAwesomeIcons.pencil, key: UniqueKey()),
      screenColor: Colors.black.withOpacity(0.3),
      //childOnUnfold: Icon(Icons.add),
      useRotateAnimation: true,
      onAction: _onSpeedDialAction,
      controller: _controller,
      isDismissible: true,
      backgroundColor: mainColor,
      //foregroundColor: Colors.blue,
    );
  }

  _onSpeedDialAction(int selectedActionIndex) async{
    if (selectedActionIndex == 0) {
      await loadAssets();
    } else if (selectedActionIndex == 1) {
      await loadAssets();

    } else if (selectedActionIndex == 2) {
      await loadAssets();

    }
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            !recording ? IconButton(
              icon: Icon(LineAwesomeIcons.video_camera),
              onPressed: () => startScreenRecord(true),
            ) : IconButton(
              icon: Icon(LineAwesomeIcons.stop),
              onPressed: () => stopScreenRecord(),
            ),
            IconButton(
              icon: Icon(LineAwesomeIcons.camera),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(LineAwesomeIcons.print),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(

      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      bottomNavigationBar: _buildBottomBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Column(
            children: [
              DrawingTool(),
              Expanded(child: buildImageList()),
            ],
          ),
          CanvasBackground(),


        ],
      ),
    );
  }

}
