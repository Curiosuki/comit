import 'dart:io';

import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class RegisterUserPhoto extends StatefulWidget {
  @override
  _RegisterUserPhotoState createState() => _RegisterUserPhotoState();
}

class _RegisterUserPhotoState extends State<RegisterUserPhoto> {

  File imageFile;

  void _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Make a Choice'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Gallary'),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  iHeightLarge,
                  GestureDetector(
                    child: Text('Camera'),
                    onTap: () {
                      _openCamera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return imageFile == null
        ? Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: AvatarButton(
            radius: 50.0,
            avatarUrl: 'assets/images/camera.png',
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
                color: black_50,
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
            backgroundColor: Colors.transparent,
            radius: 50,
            backgroundImage: FileImage(
              imageFile,
            ),
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
                color: black_50,
              )),
        ),
      ],
    );
  }
}
