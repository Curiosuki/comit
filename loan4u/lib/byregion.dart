import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loan4u/theme/i_set_color.dart';
import 'package:loan4u/theme/i_set_size.dart';
import 'package:loan4u/theme/i_set_text.dart';
import 'package:vertical_tabs/vertical_tabs.dart';


class ByRegion extends StatefulWidget {
  @override
  _BYProductViewState createState() => _BYProductViewState();
}

class _BYProductViewState extends State<ByRegion> {


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(250, 250, 250, 250),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Expanded(
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
                      '서울',
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
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: '대출나라\n', style: ISetText.subHeadline),
                                      TextSpan(text: '당일대출 당일입금', style: ISetText.subTitleBlack),
                                    ]
                                ),
                              ),
                            ),
                            iDividerMainColor,
                            Flexible(
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: '전국 비대면 무방문 대\n', style: ISetText.textSectionGrey),
                                      TextSpan(text: '당일, 월변, 급전, 소액\n', style: ISetText.textSectionGrey),
                                      TextSpan(text: '24시간 친절 상담', style: ISetText.textSectionGrey),

                                    ]
                                ),
                              ),
                            ),
                            iDivider,
                            Flexible(
                              child: Row(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.building, color: mainColor, size: 20,),
                                      iWidthMedium,
                                      Text('상승대부', style: ISetText.subTitleBlack,)
                                    ],
                                  ),
                                  Spacer(),
                                  Text('전국', style: ISetText.subTitleGrey,)
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
      ),
    );
  }
}
