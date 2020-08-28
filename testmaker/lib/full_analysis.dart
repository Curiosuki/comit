import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';
import 'package:testmaker/theme/i_set_boxdecoration.dart';
import 'package:testmaker/theme/i_set_color.dart';
import 'package:testmaker/theme/i_set_size.dart';
import 'package:testmaker/theme/i_set_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/repository.dart';
import 'package:pdf/pdf.dart';

class FullAnalysis extends StatefulWidget {
  @override
  _FullAnalysisState createState() => _FullAnalysisState();
}

class _FullAnalysisState extends State<FullAnalysis> {


  final engCtrl = TextEditingController();
  final korCtrl = TextEditingController();
  TextEditingController schoolCtrl = TextEditingController();
  TextEditingController testCtrl = TextEditingController();
  TextEditingController chapterCtrl = TextEditingController();
  TextEditingController textNumberCtrl = TextEditingController();


  String schoolName = '학교/학원명';
  String testName = '교재명';
  String chapterName = '0';
  String textNumber = '0';

  String engText = '';
  String korText = '';

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
//    engCtrl.text = '';
//    korCtrl.text = '';

    engCtrl.addListener(() => setState(() => engText = engCtrl.text));
    korCtrl.addListener(() => setState(() => korText = korCtrl.text));

    schoolCtrl.addListener(() => setState(() => schoolName = schoolCtrl.text));
    testCtrl.addListener(() => setState(() => testName = testCtrl.text));
    chapterCtrl.addListener(() =>  setState(() => chapterName = chapterCtrl.text));
    textNumberCtrl.addListener(() =>  setState(() => textNumber = textNumberCtrl.text));

  }

  @override
  void dispose() {
    // TODO: implement dispose
    engCtrl.dispose();
    korCtrl.dispose();
    schoolCtrl.dispose();
    testCtrl.dispose();
    chapterCtrl.dispose();
    super.dispose();
  }




    @override
  Widget build(BuildContext context) {

    var _list = Provider.of<Repository>(context).textboxes;

    Future<Uint8List> generatePdf(PdfPageFormat format) async {
      final pw.Document pdf = pw.Document() ;

      final myKoreanFont =
      await rootBundle.load("assets/fonts/NanumGothic-Regular.ttf").catchError((error) {
        print(error);
      });

      pw.Widget buildDisplayTextPDF (DisplayString item) {

        if (item.asType == DisplayType.info) {
          return pw.Container(
            padding: pw.EdgeInsets.all(4),
            color: PdfColor.fromInt(0xFFF3E5F5),
            width: double.infinity,
            child: pw.Text(
                "${item.text}", style: pw.TextStyle(lineSpacing: 8, font: pw.Font.ttf(myKoreanFont), fontSize: 8.0, color: PdfColor.fromInt(0xff6200ee))),
          );

        } else if (item.asType == DisplayType.Kor){
          return pw.Container(
              padding: pw.EdgeInsets.all(4),
              child: pw.Text(
                "▶ ${item.text}", style: pw.TextStyle(lineSpacing: 8, font: pw.Font.ttf(myKoreanFont), fontSize: 8.0, height: 2.0, color: PdfColor.fromInt(0xFF9E9E9E)))
          );

        }else {
          return pw.Container(
              padding: pw.EdgeInsets.all(4),
              child: pw.Text(
                "□ ${item.text}", style: pw.TextStyle(lineSpacing: 8, font: pw.Font.ttf(myKoreanFont), fontSize: 12.0, height: 2.0))
          );
        }
      }


      pdf.addPage(pw.MultiPage(
          pageFormat: format,
          build: (pw.Context context) => [
            pw.Divider(thickness: 3, height: 3, color: PdfColor.fromInt(0xff6200ee)),
            pw.Padding(
              padding: pw.EdgeInsets.all(16),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    pw.Expanded(
                      flex: 1,
                      child: pw.Text(schoolName, textAlign: pw.TextAlign.center, style: pw.TextStyle(font: pw.Font.ttf(myKoreanFont), fontSize: 16.0, color: PdfColor.fromInt(0xff6200ee))),
                    ),
                    pw.Expanded(
                      flex: 1,
                      child: pw.Text(testName, textAlign: pw.TextAlign.center, style: pw.TextStyle(font: pw.Font.ttf(myKoreanFont), fontSize: 24.0, color: PdfColor.fromInt(0xff6200ee))),
                    ),
                    pw.Expanded(
                      flex: 1,
                      child: pw.Text("$chapterName과 $textNumber번", textAlign: pw.TextAlign.center, style: pw.TextStyle(font: pw.Font.ttf(myKoreanFont), fontSize: 16.0, color: PdfColor.fromInt(0xff6200ee))),
                    ),
                  ]
              ),
            ),

            pw.Divider(thickness: 3, height: 3, color: PdfColor.fromInt(0xff6200ee)),
            pw.SizedBox(height: 24),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: _list.map((item) => buildDisplayTextPDF(item),).toList(),
            ),
            pw.SizedBox(height: 24),
            pw.Divider(thickness: 3, height: 3, color: PdfColor.fromInt(0xff6200ee)),

          ]
      ));

      return pdf.save();

    }

    Future<void> _showQuestion() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('< 원클릭 영어지문 분석기 >', style: ISetText.title,),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('\n1. 오른쪽 박스에 나온 지시대로 영문과 한글텍스트를 넣으세요.\n'),
                  Text("2. '분석모드'버튼을 누르시면, 오른쪽 화면에 지문이 자동으로 분석됩니다.\n"),
                  Text("3. '인쇄모드'버튼을 누르시면, PDF로 저장할 수 있습니다.\n"),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('확인', style: ISetText.body,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Tooltip(
          message: '메뉴',
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
        ),
        actions: [
          Tooltip(
            message: '개발자 카페',
            child: IconButton(
              icon: Icon(FontAwesomeIcons.dev,),
              onPressed: () async {
                const url = 'https://cafe.naver.com/danieltoeic';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },),
          ),
          Tooltip(
            message: '참고문법교재',
            child: IconButton(
              icon: Icon(FontAwesomeIcons.book),
              onPressed: () async {
                const url = 'https://issuu.com/hijack30/docs/___________15_';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },),
          ),
          Tooltip(
        message: '사용방법',
        child: IconButton(
          icon: Icon(FontAwesomeIcons.questionCircle),
          onPressed: _showQuestion,
        ),
      ),
        ],
        backgroundColor: mainColor,
        elevation: 0,
        title: Text('원클릭 영어지문 자동분석기', style: ISetText.titleWhite,),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      iHeightMedium,
                      iDividerMainColor,
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Text(schoolName, style: ISetText.title, textAlign: TextAlign.center,)),
                            Expanded(
                                flex: 3,
                                child: Text(testName, style: ISetText.display4, textAlign: TextAlign.center,)),
                            Expanded(
                                flex: 1,
                                child: Text('$chapterName과', style: ISetText.title, textAlign: TextAlign.center,)),
                            Expanded(
                                flex: 1,
                                child: Text('$textNumber번', style: ISetText.title, textAlign: TextAlign.center,)),
                          ],
                        ),
                      ),
                      iDividerMainColor,
                      Flexible(
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          children: _list.map((item) =>
                              buildDisplayText(item),).toList(),
                        ),
                      ),
                      iDividerMainColor,


                    ],
                  ),
                ),
              )
          ),
          VerticalDivider(
              thickness: 15, width: 15, color: Colors.grey.withOpacity(0.2)
          ),
          Expanded(
            child: Scaffold(
              floatingActionButton: SpeedDial(
                overlayColor: backgroundColor,
                animatedIcon: AnimatedIcons.menu_close,
                animatedIconTheme: IconThemeData(size: 22),
                backgroundColor: mainColor,
                //visible: true,
                curve: Curves.fastLinearToSlowEaseIn,
                children: [
                  SpeedDialChild(
                      child: Icon(
                        FontAwesomeIcons.print,
                        size: 20,
                      ),
                      backgroundColor: mainColor,
                      onTap: () {
                        Printing.layoutPdf(
                          onLayout: (PdfPageFormat format) {
                            return generatePdf(format);
                          },
                        );
                      },
                      label: '인쇄모드',
                      labelStyle: ISetText.bodyWhite,
                      labelBackgroundColor: mainColor),
                  SpeedDialChild(
                      child: Icon(
                        FontAwesomeIcons.filePdf,
                        size: 20,
                      ),
                      backgroundColor: mainColor,
                      onTap: () {
                        Provider.of<Repository>(context, listen:false).addEntries(engText, korText);
                      },
                      label: '분석모드',
                      labelStyle: ISetText.bodyWhite,
                      labelBackgroundColor: mainColor),
                ],


              ),
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 28),
                  child: Column(
                    children: <Widget>[
                      iHeightMedium,
                      Container(
                        padding: EdgeInsets.only(top: 8, left: 8),
                        decoration: iBoxDecoration,
                        child: TextField(
                          cursorColor: mainColor,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: mainColor),
                            hintText: '지문을 검색해주세요',
                            prefixIcon: Icon(FontAwesomeIcons.search, color: mainColor),
                            border: InputBorder.none,
                            //contentPadding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                      iHeightLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: schoolCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              //keyboardType: TextInputType.multiline,
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color(0xff6200ee))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '학교 / 학원명',
                                focusColor: Color(0xff6200ee),
                              ),
                            ),
                          ),
                          iWidthLarge,
                          Expanded(
                            flex: 3,
                            child: TextField(
                              controller: testCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              //keyboardType: TextInputType.multiline,
                              maxLines: 1,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color(0xff6200ee))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '교재 / 시험제목',
                                focusColor: Color(0xff6200ee),
                              ),
                            ),
                          ),
                          iWidthLarge,
                          Expanded(
                            flex: 1,
                            child: TextField(
                              controller: chapterCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              //keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color(0xff6200ee))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '챕터 ',
                                focusColor: Color(0xff6200ee),
                              ),
                            ),
                          ),
                          iWidthLarge,
                          Expanded(
                            flex: 1,
                            child: TextField(
                              controller: textNumberCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              //keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color(0xff6200ee))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '번호',
                                focusColor: Color(0xff6200ee),
                              ),
                            ),
                          ),

                        ],
                      ),
                      iHeightMedium,
                      Flexible(
                        child: ListView(
                          children: <Widget>[
                            iHeightMedium,
                            TextField(
                              controller: engCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Color(0xff6200ee))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '영어지문을 넣어주세요.',
                              ),
                            ),
                            iHeightLarge,
                            TextField(
                              controller: korCtrl,
                              cursorColor: Color(0xff6200ee),
                              textInputAction: TextInputAction.newline,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              minLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.teal)),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xff6200ee), width: 0.0),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: '한글지문을 넣어주세요.',
                                focusColor: Color(0xff6200ee),
                              ),
                            ),
                            iHeightLarge,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildDisplayText(DisplayString item) {

    if (item.asType == DisplayType.info) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 12),
        color: mainColor.withOpacity(0.05),
        child: Text(
            "${item.text}", style: TextStyle(fontSize: 12.0, color: mainColor)),
      );

    } else if (item.asType == DisplayType.Kor){
      return Text(
          "▷ ${item.text}", style: TextStyle(fontSize: 12.0, height: 2.0, color: Colors.grey));

    }else {
      return Text(
          "□ ${item.text}", style: TextStyle(
          fontSize: 16.0, height: 2.0));
    }
  }



}
/*  CarouselSlider(
                      height: 100,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: Duration(seconds: 10),
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                      items: [
                        InkWell(
                            onTap:() async {
                              const url = 'https://play.google.com/store/apps/details?id=com.tachyonfactory.speedupplayerpro';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset('assets/images/banner1.png')),
                        InkWell(
                            onTap: () async {
                              const url = 'https://cloudstudying.kr/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Image.asset('assets/images/banner2.png')),

                      ],

                    ),
                    iHeightMedium,*/
/*              Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('● 핵심소재:  ', style: ISetText.textSectionBlack,),
                            Expanded(
                              child: TextField(
                                cursorColor: mainColor,
                                decoration: InputDecoration.collapsed(
                                    hintText: '글의 핵심소재를 넣어주세요',
                                    hintStyle: ISetText.textSectionGrey
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('● 핵심내용:  ', style: ISetText.textSectionBlack,),
                            Expanded(
                              child: TextField(
                                cursorColor: mainColor,
                                decoration: InputDecoration.collapsed(
                                    hintText: '글의 핵심내용을 간단히 적어주세요',
                                    hintStyle: ISetText.textSectionGrey
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Text('● 원본문제:  ', style: ISetText.textSectionBlack,),
                            Flexible(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FilterChipWidget(chipName: '주제',),
                                    FilterChipWidget(chipName: '제목',),
                                    FilterChipWidget(chipName: '요지',),
                                    FilterChipWidget(chipName: '주장',),
                                    FilterChipWidget(chipName: '빈칸',),
                                    FilterChipWidget(chipName: '요약',),
                                    FilterChipWidget(chipName: '목적',),
                                    FilterChipWidget(chipName: '속담',),
                                    FilterChipWidget(chipName: '일치',),
                                    FilterChipWidget(chipName: '무관',),
                                    FilterChipWidget(chipName: '어법',),
                                    FilterChipWidget(chipName: '어휘',),
                                    FilterChipWidget(chipName: '순서',),
                                    FilterChipWidget(chipName: '연결',),
                                    FilterChipWidget(chipName: '삽입',),
                                    FilterChipWidget(chipName: '지칭',),
                                    FilterChipWidget(chipName: '심경',),
                                    FilterChipWidget(chipName: '무드',),
                                    FilterChipWidget(chipName: '도표',),
                                    FilterChipWidget(chipName: '서술',),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Text('● 예상문제:  ', style: ISetText.textSectionBlack,),
                            Flexible(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FilterChipWidget(chipName: '주제',),
                                    FilterChipWidget(chipName: '제목',),
                                    FilterChipWidget(chipName: '요지',),
                                    FilterChipWidget(chipName: '주장',),
                                    FilterChipWidget(chipName: '빈칸',),
                                    FilterChipWidget(chipName: '요약',),
                                    FilterChipWidget(chipName: '목적',),
                                    FilterChipWidget(chipName: '속담',),
                                    FilterChipWidget(chipName: '일치',),
                                    FilterChipWidget(chipName: '무관',),
                                    FilterChipWidget(chipName: '어법',),
                                    FilterChipWidget(chipName: '어휘',),
                                    FilterChipWidget(chipName: '순서',),
                                    FilterChipWidget(chipName: '연결',),
                                    FilterChipWidget(chipName: '삽입',),
                                    FilterChipWidget(chipName: '지칭',),
                                    FilterChipWidget(chipName: '심경',),
                                    FilterChipWidget(chipName: '무드',),
                                    FilterChipWidget(chipName: '도표',),
                                    FilterChipWidget(chipName: '서술',),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      iDividerGray,
**/
