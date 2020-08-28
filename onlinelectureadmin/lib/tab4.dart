import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';


class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  Image pickedImage;
  String videoSRC;

  @override
  void initState() {
    super.initState();
  }

  pickImage() async {
    /// You can set the parameter asUint8List to true
    /// to get only the bytes from the image
    /* Uint8List bytesFromPicker =
        await ImagePickerWeb.getImage(outputType: ImageType.bytes);

    if (bytesFromPicker != null) {
      debugPrint(bytesFromPicker.toString());
    } */

    /// Default behavior would be getting the Image.memory
    Image fromPicker = await ImagePickerWeb.getImage(outputType: ImageType.widget);

    if (fromPicker != null) {
      setState(() {
        pickedImage = fromPicker;
      });
    }
  }

  pickVideo() async {
    final videoMetaData = await ImagePickerWeb.getVideo(outputType: VideoType.bytes);

    debugPrint('---Picked Video Bytes---');
    debugPrint(videoMetaData.toString());

    /// >>> Upload your video in Bytes now to any backend <<<
    /// >>> Disclaimer: local files are not working till now! [February 2020] <<<

    if (videoMetaData != null) {
      setState(() {
        videoSRC = 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Text('1'),
                  title: Text(
                    '이벤트배너 1',
                    style: ISetText.body,
                  ),
                  trailing:  IconButton(
                    onPressed: () => pickImage(),
                    icon: Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
          ),
          iVerticalDivider,
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Text('1'),
                  title: AnimatedSwitcher(
                    duration: Duration(milliseconds: 300),
                    switchInCurve: Curves.easeIn,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      child: pickedImage,
                    ) ??
                        Container(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

