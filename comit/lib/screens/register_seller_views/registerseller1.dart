import 'dart:io';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/components/button/main_button.dart';
import 'package:comit/components/forms/regis_textbox.dart';
import 'package:comit/components/forms/regis_textfield.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/screens/register_seller_views/registerseller2.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class RegisterSeller1 extends StatefulWidget {
  @override
  _RegisterSeller1State createState() => _RegisterSeller1State();
}

class _RegisterSeller1State extends State<RegisterSeller1>
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

  TextEditingController ctrlNickName = TextEditingController();
  TextEditingController ctrlWebsite = TextEditingController();
  TextEditingController ctrlYoutube = TextEditingController();
  TextEditingController ctrlFacebook = TextEditingController();
  TextEditingController ctrlCollege = TextEditingController();
  TextEditingController ctrlExperience = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
            backgroundColor: mainColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: mainColor,
            title: const Text('Registration Step 1'),
            centerTitle: true,
          ),
          body: FormBuilder(
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: ListView(
                padding: const EdgeInsets.all(32.0),
                children: <Widget>[
                  Center(
                    child: Text(
                      'Tutor',
                      style: ISetText.headline,
                    ),
                  ),
                  iHeightLarge,
                  imageFile == null
                      ? Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: AvatarButton(
                                radius: 50.0,
                                avatarUrl: userInfo[0].userAvatarUrl,
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
                        ),
                  iHeightLarge,
                  Text(
                    "If the photo doesn't show your face completely, \nthe class won't be authorized.",
                    style: ISetText.textSectionGrey,
                    textAlign: TextAlign.center,
                  ),
                  iDivider,
                  RegisterTextField(
                    ctrl: ctrlNickName,
                    icon: Icon(
                      FontAwesomeIcons.user,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Nickname',
                    hint: 'Enter your nickname',
                  ),
                  iHeightLarge,
                  RegisterTextField(
                    ctrl: ctrlWebsite,
                    icon: Icon(
                      FontAwesomeIcons.chrome,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Website',
                    hint: '(Optional) website link',
                  ),
                  iHeightLarge,
                  RegisterTextField(
                    ctrl: ctrlYoutube,
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Youtube',
                    hint: '(Optional) youtube link',
                  ),
                  iHeightLarge,
                  RegisterTextField(
                    ctrl: ctrlFacebook,
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Facebook',
                    hint: '(Optional) facebook link',
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: ctrlCollege,
                    icon: Icon(
                      FontAwesomeIcons.school,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'College and Major',
                    hint: 'College, University, your major, and so on',
                    minLines: 2,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: ctrlExperience,
                    icon: Icon(
                      FontAwesomeIcons.solidBuilding,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Experience',
                    hint: 'Working experiences and expertise, and so on',
                    minLines: 5,
                  ),
                  iHeightLarge,
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
                            Navigator.pushNamed(context, '/registerseller2'),
                        child: Text(
                          'Next',
                          style: ISetText.title,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
