import 'dart:ui';

import 'package:admin/app1/store.dart';
import 'package:admin/theme/i_set_boxdecoration.dart';
import 'package:admin/theme/i_set_color.dart';
import 'package:admin/theme/i_set_size.dart';
import 'package:admin/theme/i_set_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'components/regis_textbox.dart';
import 'home.dart';



class Designs extends StatefulWidget {
  @override
  _DesignsState createState() => _DesignsState();
}

class _DesignsState extends State<Designs> {
  Image pickedImage;
  String videoSRC;
  double _progress = 400;
  TextEditingController appNameCtrl = TextEditingController();
  TextEditingController mainSlideCtrl = TextEditingController();
  TextEditingController eventSlideCtrl = TextEditingController();
  TextEditingController mainListCtrl = TextEditingController();

  String appTitle = '동물병원앱';
  String mainSlideTitle = '베스트 동물병원';
  String eventSlideTitle = '이달의 이벤트';
  String mainListTitle = '우리동네 동물병원';

  @override
  void initState() {
    super.initState();
    appNameCtrl.addListener(() => setState(() => appTitle = appNameCtrl.text));
    mainSlideCtrl.addListener(() => setState(() =>  mainSlideTitle = mainSlideCtrl.text));
    eventSlideCtrl.addListener(() => setState(() => eventSlideTitle = eventSlideCtrl.text));
    mainListCtrl.addListener(() => setState(() => mainListTitle = mainListCtrl.text));
  }

  void dispose() {
    // 텍스트에디팅컨트롤러를 제거하고, 등록된 리스너도 제거된다.
    appNameCtrl.dispose();
    super.dispose();
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

  // 컬러 픽커
  // Use temp variable to only update color when press dialog 'submit' button
  ColorSwatch _tempMainColor;
  Color _tempShadeColor;
  ColorSwatch mainColorChanged = Colors.blue;
  Color _shadeColor = Colors.blue[800];

  void _openDialog(String title, Widget content) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(6.0),
          title: Text(title),
          content: content,
          actions: [
            FlatButton(
              child: Text('취소'),
              onPressed: Navigator.of(context).pop,
            ),
            FlatButton(
              child: Text('저장'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() => mainColorChanged = _tempMainColor);
                setState(() => _shadeColor = _tempShadeColor);
              },
            ),
          ],
        );
      },
    );
  }

  void _openColorPicker() async {
    _openDialog(
      "Color picker",
      MaterialColorPicker(
        selectedColor: _shadeColor,
        onColorChange: (color) => setState(() => _tempShadeColor = color),
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
        onBack: () => print("Back button pressed"),
      ),
    );
  }

  void _openMainColorPicker() async {
    _openDialog(
      "Main Color picker",
      MaterialColorPicker(
        selectedColor: mainColorChanged,
        allowShades: false,
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
      ),
    );
  }

  void _openAccentColorPicker() async {
    _openDialog(
      "Accent Color picker",
      MaterialColorPicker(
        colors: accentColors,
        selectedColor: mainColorChanged,
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
        circleSize: 40.0,
        spacing: 10,
      ),
    );
  }

  void _openFullMaterialColorPicker() async {
    _openDialog(
      "Full Material Color picker",
      MaterialColorPicker(
        colors: fullMaterialColors,
        selectedColor: mainColorChanged,
        onMainColorChange: (color) => setState(() => _tempMainColor = color),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: Text('앱 미리보기'),
              ),
              body:  Center(
                child: Container(
                  width: _progress,
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  child: Card(
                    elevation: 10,
                    child: MaterialApp(
                        debugShowCheckedModeBanner: true,
                        title: 'Flutter Demo',
                        theme: ThemeData(
                            fontFamily: 'Quicksand',
                            //primarySwatch: Colors.purple,
                            appBarTheme: AppBarTheme(
                              color: Colors.blueAccent,
                            ),
                            accentColor: Colors.blueAccent,
                            unselectedWidgetColor: Colors.white
                        ),
                        home: Scaffold(
                            floatingActionButton: FloatingActionButton.extended(
                              onPressed: (){},
                              backgroundColor: mainColorChanged,
                              icon: Icon(Icons.phone),
                              label: Text("전화상담"),
                            ),
                            appBar: AppBar(
                              backgroundColor: mainColorChanged,
                              centerTitle: true,
                              title: Text('$appTitle', style: ISetText.titleWhite,),
                            ),
                            body: Builder(builder: (BuildContext ctx) =>ListView(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8),
                                  padding: EdgeInsets.all(4),
                                  decoration: iBoxDecoration,
                                  child: TextField(
                                    cursorColor: mainColorChanged,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(color: mainColorChanged),
                                      hintText: '검색해보세요',
                                      prefixIcon: Icon(FontAwesomeIcons.search, color: mainColorChanged),
                                      border: InputBorder.none,
                                      //contentPadding: EdgeInsets.all(20),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '$mainSlideTitle',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: mainColorChanged,),
                                  ),
                                ),
                                iHeightMedium,
                                Container(
                                  child: CarouselSlider.builder(
                                    height: 100,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 1.0,
                                    //initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                                    enlargeCenterPage: false,
                                    //onPageChanged: callbackFunction,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (BuildContext context, int index) => Stack(
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.symmetric(horizontal: 4),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: Image.network(
                                              'https://m.mypetplus.co.kr/upload/201904301024380.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 16,
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.6),
                                                child: Text(
                                                  'Best',
                                                  style: ISetText.textSectionWhite,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                iHeightMedium,
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '$eventSlideTitle',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: mainColorChanged,),
                                  ),
                                ),
                                Container(
                                  child: CarouselSlider.builder(
                                    height: 100,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 1.0,
                                    //initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    pauseAutoPlayOnTouch: Duration(seconds: 10),
                                    enlargeCenterPage: false,
                                    //onPageChanged: callbackFunction,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (BuildContext context, int index) => Stack(
                                      children: <Widget>[
                                        AnimatedSwitcher(
                                          duration: Duration(milliseconds: 300),
                                          switchInCurve: Curves.easeIn,
                                          child: Container(
                                            color: black_500,
                                            width: double.infinity,
                                            child: pickedImage,
                                          ) ??
                                              Container(),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 16,
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                padding: EdgeInsets.all(4.0),
                                                color: mainColor.withOpacity(0.6),
                                                child: Text(
                                                  '이벤트',
                                                  style: ISetText.textSectionWhite,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                iHeightMedium,
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '$mainListTitle',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: mainColorChanged,),
                                  ),
                                ),
                                iHeightMedium,
                                ListTile(
                                  onTap: () {

                                    Navigator.push(context, MaterialPageRoute(builder: (cxt) => Store()),);

                                  } ,
                                  leading: CircleAvatar(
                                      backgroundColor: black_50,
                                      radius: 25,
                                      backgroundImage:
                                      AssetImage('assets/images/avatar1.jpg')),
                                  title: Text('이노동물병원'),
                                  subtitle: Text('엄마의 마음으로 진료합니다!'),
                                  trailing: Text('수원시 영통구'),
                                ),


                              ],
                            ),
                            )
                        )
                      ),

                  ),
                ),
              ),
            ),
          ),
          iVerticalDivider,
          Expanded(
            flex: 1,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: mainColor,
                title: Text('디자인 설정'),
              ),
              body: ListView(
                children: [
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: appNameCtrl,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '앱이름',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: mainSlideCtrl,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '메인슬라이드 제목',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: eventSlideCtrl,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '이벤트슬라이드 제목',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    ctrl: mainListCtrl,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '리스트 타이틀',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      iWidthLarge,
                      Text(
                        '크기조절',
                        style: ISetText.body,
                      ),
                    ],
                  ),
                  Slider(
                    value: _progress,
                    label: '$_progress',
                    min: 0.0,
                    max: 1000.0,
                    onChanged: (value){
                      setState(() {
                        _progress = value.roundToDouble();
                      });
                    },
                  ),
                  iHeightLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      iWidthLarge,
                      Text(
                        '색상선택',
                        style: ISetText.body,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: mainColorChanged,
                        radius: 35.0,
                        child: const Text("메인색상"),
                      ),
                      iWidthLarge,
                      CircleAvatar(
                        backgroundColor: _shadeColor,
                        radius: 35.0,
                        child: const Text("음영"),
                      ),
                      iWidthLarge,
                      RaisedButton(
                        color: mainColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        onPressed: _openColorPicker,
                        child: const Text('색상선택', style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                  iHeightLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      iWidthLarge,
                      Text(
                        '슬라이드 배너',
                        style: ISetText.body,
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Text('1'),
                    title: Text(
                      '매인배너 1',
                      style: ISetText.body,
                    ),
                    trailing:  IconButton(
                      onPressed: () => pickImage(),
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      '매인배너 2',
                      style: ISetText.body,
                    ),
                    trailing:  IconButton(
                      onPressed: () => pickImage(),
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      '매인배너 3',
                      style: ISetText.body,
                    ),
                    trailing:  IconButton(
                      onPressed: () => pickImage(),
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  ListTile(
                    leading: Text('4'),
                    title: Text(
                      '매인배너 4',
                      style: ISetText.body,
                    ),
                    trailing:  IconButton(
                      onPressed: () => pickImage(),
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  ListTile(
                    leading: Text('5'),
                    title: Text(
                      '매인배너 5',
                      style: ISetText.body,
                    ),
                    trailing:  IconButton(
                      onPressed: () => pickImage(),
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  iHeightLarge,
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: FlatButton(
                      color: mainColor,
                      onPressed: () {
                        setState(() {
                          mainSlideCtrl = mainSlideCtrl;
                          eventSlideCtrl = eventSlideCtrl;
                          mainListCtrl = mainListCtrl;

                        });
                      },
                      child: Text('저장', style: ISetText.bodyWhite,),

                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
