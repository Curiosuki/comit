import 'package:flutter/material.dart';
import 'package:flutterweb/components/regis_textbox.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_size.dart';
import 'package:flutterweb/theme/i_set_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Tab5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: missing_return
      builder: (context, constraints){
        if(constraints.maxWidth > 800){
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Column(
                  children: <Widget>[
                    iHeightLarge,
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'Get In Touch', style: ISetText.titleBlack),
                        ],
                      ),
                    ),
                    iDivider,
                  ],
                ),
              ),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RegisterTextBox(
                          //ctrl: ctrlExperience,
                          icon: Icon(
                            FontAwesomeIcons.userAlt,
                            size: 18,
                            color: mainColor,
                          ),
                          title: 'Name',
                          hint: '',
                          minLines: 1,
                        ),
                        iHeightLarge,
                        RegisterTextBox(
                          //ctrl: ctrlExperience,
                          icon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 18,
                            color: mainColor,
                          ),
                          title: 'E-mail',
                          hint: '',
                          minLines: 1,
                        ),
                        iHeightLarge,
                        RegisterTextBox(
                          //ctrl: ctrlExperience,
                          icon: Icon(
                            FontAwesomeIcons.phoneAlt,
                            size: 18,
                            color: mainColor,
                          ),
                          title: 'Phone',
                          hint: '',
                          minLines: 1,
                        ),
                        iHeightLarge,
                        Flexible(
                          child: RegisterTextBox(
                            //ctrl: ctrlExperience,
                            icon: Icon(
                              FontAwesomeIcons.facebookMessenger,
                              size: 18,
                              color: mainColor,
                            ),
                            title: 'Message',
                            hint: '',
                            minLines: 5,
                          ),
                        ),
                        iHeightSmall,
                        Flexible(
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            child: FlatButton(
                              shape: StadiumBorder(),
                              color: mainColor,
                              splashColor: black_50.withOpacity(0.2),
                              onPressed: () {
                                print('pressed');
                              },
                              child: Text(
                                'Send',
                                style: ISetText.bodyWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Container(
                                color: black_100,
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Icon(FontAwesomeIcons.envelopeOpenText, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'E-mail', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\n,hijack0713@gmail.com', style: ISetText.textSectionGrey),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Container(
                                color: black_100,
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Icon(FontAwesomeIcons.phoneAlt, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Phone Number', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\n010-9647-0713', style: ISetText.textSectionGrey),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Container(
                                color: black_100,
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Icon(FontAwesomeIcons.locationArrow, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Location', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nSouth Korea', style: ISetText.textSectionGrey),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Container(
                                color: black_100,
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Icon(FontAwesomeIcons.facebook, color: mainColor, size: 30,)),
                            iWidthLarge,
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'SNS', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nSouth Korea', style: ISetText.textSectionGrey),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else{
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.black87,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Column(
                  children: <Widget>[
                    iHeightLarge,
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(text: 'Get In Touch', style: ISetText.titleWhite),
                        ],
                      ),
                    ),
                    iHeightLarge,
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: ListView(
                children: <Widget>[
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      FontAwesomeIcons.userAlt,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Name',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      FontAwesomeIcons.envelope,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'E-mail',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      FontAwesomeIcons.phoneAlt,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Phone',
                    hint: '',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      FontAwesomeIcons.facebookMessenger,
                      size: 18,
                      color: mainColor,
                    ),
                    title: 'Message',
                    hint: '',
                    minLines: 5,
                  ),
                  iHeightLarge,
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: FlatButton(
                      shape: StadiumBorder(),
                      color: mainColor,
                      splashColor: black_50.withOpacity(0.2),
                      onPressed: () {
                        print('pressed');
                      },
                      child: Text(
                        'Send',
                        style: ISetText.bodyWhite,
                      ),
                    ),
                  ),
                  iHeightLarge,
                  Row(
                    children: <Widget>[
                      Container(
                          color: black_100,
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.envelopeOpenText, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'E-mail', style: ISetText.bodyblack),
                              TextSpan(text: '\n\n,hijack0713@gmail.com', style: ISetText.textSectionGrey),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  iHeightLarge,
                  Row(
                    children: <Widget>[
                      Container(
                          color: black_100,
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.phoneAlt, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Phone Number', style: ISetText.bodyblack),
                              TextSpan(text: '\n\n010-9647-0713', style: ISetText.textSectionGrey),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  iHeightLarge,
                  Row(
                    children: <Widget>[
                      Container(
                          color: black_100,
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.locationArrow, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Location', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nSouth Korea', style: ISetText.textSectionGrey),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  iHeightLarge,
                  Row(
                    children: <Widget>[
                      Container(
                          color: black_100,
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.facebook, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'SNS', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nSouth Korea', style: ISetText.textSectionGrey),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
