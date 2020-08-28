import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';

import 'components/regis_textbox.dart';


class Tab11 extends StatefulWidget {
  @override
  _Tab11State createState() => _Tab11State();
}

class _Tab11State extends State<Tab11> {
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


  String dropdownValue1 = '학년';
  String dropdownValue2 = '대분류';
  String dropdownValue3 = '소분류';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: Text('Q', style: ISetText.body,),
                        title: Text(
                          '문제의 이미지 캡처본을 넣어주세요',
                          style: ISetText.body,
                        ),
                        trailing:  IconButton(
                          onPressed: () => pickImage(),
                          icon: Icon(Icons.camera_alt),
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        switchInCurve: Curves.easeIn,
                        child: Container(
                          width: double.infinity,
                          child: pickedImage,
                        ) ??
                            Container(),
                      ),
                      iHeightLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.edit, size: 18, color: mainColor,),
                          iWidthLarge,
                          Text(
                            '전체분류',
                            style: ISetText.body,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownValue1,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue1 = newValue;
                              });
                            },
                            items: <String>['학년', '초등', '중등', '고등']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),

                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownValue2,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue2 = newValue;
                              });
                            },
                            items: <String>['대분류', '집합', '이차방정식', '함수']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),

                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: dropdownValue3,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue3 = newValue;
                              });
                            },
                            items: <String>['소분류', '합집합', '교집합', '기타']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                                .toList(),

                          ),
                        ),
                      ),
                      iHeightLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.edit, size: 18, color: mainColor,),
                          iWidthLarge,
                          Text(
                            'OMR 정답',
                            style: ISetText.body,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                color: black_200,
                                child: Text(
                                  '1',
                                ),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            Flexible(
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                color: black_200,
                                child: Text(
                                  '2',
                                ),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            Flexible(
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                color: black_200,
                                child: Text(
                                  '3',
                                ),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            Flexible(
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                color: black_200,
                                child: Text(
                                  '4',
                                ),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                              ),
                            ),
                            Flexible(
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                color: black_200,
                                child: Text(
                                  '5',
                                ),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      iHeightLarge,
                      RegisterTextBox(
                        //ctrl: ctrlExperience,
                        icon: Icon(
                          Icons.edit,
                          size: 18,
                          color: mainColor,
                        ),
                        title: '비메오 URL',
                        hint: '비메오 URL',
                        minLines: 1,
                      ),
                      iHeightLarge,
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: FlatButton(
                          color: mainColor,
                          onPressed: () {  },
                          child: Text('업로드', style: ISetText.bodyWhite,),

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            iVerticalDivider,
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    child: TextField(
                      cursorColor: mainColor,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: mainColor,),
                        border: InputBorder.none,
                        hintText: '문항을 검색해주세요',
                        hintStyle: TextStyle(color: mainColor),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
