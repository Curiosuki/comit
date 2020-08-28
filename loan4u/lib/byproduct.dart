import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loan4u/theme/i_set_color.dart';
import 'package:loan4u/theme/i_set_size.dart';
import 'package:loan4u/theme/i_set_text.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class ByProduct extends StatefulWidget {
  @override
  _ByProductState createState() => _ByProductState();
}

class _ByProductState extends State<ByProduct> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                shape: Border.all(width: 1.0, color: black_300),
                onPressed: null,
                child: Text('이용안내'),
              ),
            ),
            Expanded(
              child: FlatButton(
                shape: Border.all(width: 1.0, color: black_300),
                onPressed: null,
                child: Text('주의사항'),
              ),
            ),
          ],
        ),
        Container(
          child: CarouselSlider.builder(
            height: 100,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            //initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: Duration(seconds: 10),
            //enlargeCenterPage: true,
            //onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) => Container(
              color: black_300,
              width: double.infinity,
              child: Text('ddd'),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('총 등록업체 | 777', style: ISetText.bodyblack, textAlign: TextAlign.center,),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('실시간 대출문의 | 777,777', style: ISetText.bodyblack, textAlign: TextAlign.center,),
                )),
          ],
        ),
        Flexible(
          child: VerticalTabs(
            indicatorColor: mainColor,
            indicatorWidth: 5,
            tabsElevation: 0,
            selectedTabBackgroundColor: mainColor.withOpacity(0.2),
            tabsWidth: 150,
            direction: TextDirection.ltr,
            contentScrollAxis: Axis.vertical,
            changePageDuration: Duration(milliseconds: 500),
            tabs: <Tab>[
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '직장인대출',
                    style: ISetText.body,
                  ),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '직장인대출',
                    style: ISetText.body,
                  ),
                ),
              ),




            ],
            contents: <Widget>[
              ListView.builder(
                  itemCount: 10,
                  itemExtent: 260,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 32.0),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: RichText(
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: '대출나라\n',
                                    style: ISetText.subHeadline),
                                TextSpan(
                                    text: '당일대출 당일입금',
                                    style: ISetText.subTitleBlack),
                              ]),
                            ),
                          ),
                          iDividerMainColor,
                          Flexible(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: '전국 비대면 무방문 대\n',
                                    style: ISetText.textSectionGrey),
                                TextSpan(
                                    text: '당일, 월변, 급전, 소액\n',
                                    style: ISetText.textSectionGrey),
                                TextSpan(
                                    text: '24시간 친절 상담',
                                    style: ISetText.textSectionGrey),
                              ]),
                            ),
                          ),
                          iDivider,
                          Flexible(
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.building,
                                      color: mainColor,
                                      size: 20,
                                    ),
                                    iWidthMedium,
                                    Text(
                                      '상승대부',
                                      style: ISetText.subTitleBlack,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  '전국',
                                  style: ISetText.subTitleGrey,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 10,
                  itemExtent: 260,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 32.0),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 3.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: RichText(
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: '대출나라\n',
                                    style: ISetText.subHeadline),
                                TextSpan(
                                    text: '당일대출 당일입금',
                                    style: ISetText.subTitleBlack),
                              ]),
                            ),
                          ),
                          iDividerMainColor,
                          Flexible(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: '전국 비대면 무방문 대\n',
                                    style: ISetText.textSectionGrey),
                                TextSpan(
                                    text: '당일, 월변, 급전, 소액\n',
                                    style: ISetText.textSectionGrey),
                                TextSpan(
                                    text: '24시간 친절 상담',
                                    style: ISetText.textSectionGrey),
                              ]),
                            ),
                          ),
                          iDivider,
                          Flexible(
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.building,
                                      color: mainColor,
                                      size: 20,
                                    ),
                                    iWidthMedium,
                                    Text(
                                      '상승대부',
                                      style: ISetText.subTitleBlack,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  '전국',
                                  style: ISetText.subTitleGrey,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),





            ],
          ),
        )
      ],
    );
  }
}
