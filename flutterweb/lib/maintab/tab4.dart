import 'package:flutter/material.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_size.dart';
import 'package:flutterweb/theme/i_set_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Tab4 extends StatelessWidget {
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
                          TextSpan(text: 'Services', style: ISetText.titleBlack),
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
                                child: Icon(FontAwesomeIcons.comments, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Consulting', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                                child: Icon(FontAwesomeIcons.productHunt, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Planning', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                                child: Icon(FontAwesomeIcons.tag, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Branding', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                                child: Icon(FontAwesomeIcons.pencilAlt, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Design', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                                child: Icon(FontAwesomeIcons.mobileAlt, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Development', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                                child: Icon(FontAwesomeIcons.gift, color: mainColor, size: 30,)),
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(text: 'Launching', style: ISetText.bodyblack),
                                    TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          TextSpan(text: 'Services', style: ISetText.titleWhite),
                        ],
                      ),
                    ),
                    iHeightLarge,
                  ],
                ),
              ),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: ListView(
                children: <Widget>[
                  iHeightLarge,
                  Row(
                    children: <Widget>[
                      Container(
                          color: black_100,
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.comments, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Consulting', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          child: Icon(FontAwesomeIcons.productHunt, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Planning', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          child: Icon(FontAwesomeIcons.tag, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Branding', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          child: Icon(FontAwesomeIcons.pencilAlt, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Design', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          child: Icon(FontAwesomeIcons.mobileAlt, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Development', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
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
                          child: Icon(FontAwesomeIcons.gift, color: mainColor, size: 30,)),
                      iWidthLarge,
                      Flexible(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(text: 'Launching', style: ISetText.bodyblack),
                              TextSpan(text: '\n\nFar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.', style: ISetText.textSectionGrey),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          );
        }
      },
    );
  }
}
