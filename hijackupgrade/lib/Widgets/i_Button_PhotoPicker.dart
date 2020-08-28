import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/i_Button_CircleAvatar.dart';
import 'package:hijackupgrade/Widgets/i_Button_Flat.dart';
import 'package:image_picker/image_picker.dart';

class IButtonPhotoPicker extends StatefulWidget {
  @override
  _IButtonPhotoPickerState createState() => _IButtonPhotoPickerState();
}

class _IButtonPhotoPickerState extends State<IButtonPhotoPicker> {
  File _image;
  final picker = ImagePicker();

  Future getCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
    Navigator.of(context).pop();

  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
    Navigator.of(context).pop();

  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('프로필 사진을 선택해주세요.', style: ITextStyle.subTitle, textAlign: TextAlign.center,),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  FlatButton(
                    color: mainColor,
                    onPressed: getCamera,
                    child: Text('카메라', style: ITextStyle.bodyWhite,),
                  ),
                  FlatButton(
                    color: mainColor,
                    onPressed: getImage,
                    child: Text('갤러리', style: ITextStyle.bodyWhite,),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return _image == null
        ? Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: mainColor.withOpacity(.5),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage('https://mblogthumb-phinf.pstatic.net/MjAyMDAzMjlfMzkg/MDAxNTg1NDA4ODEzMzI2.TgYHw1rfLOzhNud2l1TQnYpBWO2C5s9gaILeSU07HLIg.jni1H76nFFFoYqBEzRZDccNAV8uLzzcxhtsvxqN7QCIg.PNG.tarkyami/%ED%95%9C%EC%86%8C%ED%9D%AC28.png?type=w800'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showChoiceDialog(context);
                  setState(() {});
                },
                child: CircleAvatar(
                    backgroundColor: mainColor,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    )),
              ),
            ],
          )
        : Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black_50.withOpacity(.5),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: FileImage(_image),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showChoiceDialog(context);
                  setState(() {});
                },
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.camera_alt,
                      color: mainColor,
                    )),
              ),
            ],
          );
  }
}
