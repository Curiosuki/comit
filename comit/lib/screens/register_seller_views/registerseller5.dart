import 'dart:io';
import 'package:comit/components/button/main_button.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class RegisterSeller5 extends StatefulWidget {
  @override
  _RegisterSeller5State createState() => _RegisterSeller5State();
}

class _RegisterSeller5State extends State<RegisterSeller5>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

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
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('Registration Step 5'),
        centerTitle: true,
      ),
      body: FormBuilder(
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          ),
          child: ListView(
            padding: EdgeInsets.all(32.0),
            children: <Widget>[
              Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Photos and Videos',
                        style: ISetText.headline,
                      ),
                      iHeightLarge,
                      Text(
                        'For more details to students, please upload photos and videos related to your class',
                        style: ISetText.textSectionGrey,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              iDivider,
              iHeightLarge,
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.youtube,
                        size: 18,
                        color: mainColor,
                      ),
                      iWidthLarge,
                      Text(
                        'Sample Video',
                        style: ISetText.body,
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '(Optional) Enter Your Sample Video Link',
                        focusColor: mainColor),
                  ),
                ],
              ),
              iHeightLarge,
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.camera,
                        size: 18,
                        color: mainColor,
                      ),
                      iWidthLarge,
                      Text(
                        'Photos for Ads',
                        style: ISetText.body,
                      ),
                    ],
                  ),
                  iHeightMedium,
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                                color: mainSliderBackground,
                                child: Icon(
                                  FontAwesomeIcons.camera,
                                  color: mainColor,
                                ),
                              )
                            : Image.file(
                                imageFile,
                                fit: BoxFit.cover,
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                          color: mainSliderBackground,
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: mainColor,
                          ),
                        )
                            : Image.file(
                          imageFile,
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                          color: mainSliderBackground,
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: mainColor,
                          ),
                        )
                            : Image.file(
                          imageFile,
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                          color: mainSliderBackground,
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: mainColor,
                          ),
                        )
                            : Image.file(
                          imageFile,
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                          color: mainSliderBackground,
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: mainColor,
                          ),
                        )
                            : Image.file(
                          imageFile,
                          fit: BoxFit.cover,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _openGallery(context);
                          setState(() {});
                        },
                        child: imageFile == null
                            ? Container(
                          color: mainSliderBackground,
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: mainColor,
                          ),
                        )
                            : Image.file(
                          imageFile,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              iHeightLarge,
              iDivider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MainButton(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 3,
                    pressedButton: () => Navigator.pop(context),
                    child: Text(
                      'Prev',
                      style: ISetText.title,
                    ),
                  ),
                  MainButton(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 3,
                    pressedButton: () =>
                        Navigator.pushNamed(context, '/'),
                    child: Text(
                      'Submit',
                      style: ISetText.title,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
