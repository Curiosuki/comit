import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_size.dart';
import 'package:onlinelecture/theme/i_set_string.dart';
import 'package:onlinelecture/theme/i_set_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AssignmentLectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          title: Text(brand_name),
        ),
      body: ListView(
        children: [
          iHeightLarge,
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: new Text(
              "70.0%",
              style:
              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            footer: new Text(
              "과제 정답률",
              style:
              new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.redAccent,
          ),
          iHeightLarge,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            height: 50,
            color: Colors.redAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '제출한 문항수: 10개  |  ',
                  style: ISetText.bodyWhite,
                ),
                Text(
                  '틀린문항: 3개  |  ',
                  style: ISetText.bodyWhite,
                ),
                Text(
                  '  정답율: 70%',
                  style: ISetText.bodyWhite,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                            width: 120,
                            height: 100,
                            child: Image.network(
                              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/5ce32583504683.5d3ee5d2adea1.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$brand_name 문제은행',
                                  style: ISetText.subTitle,
                                ),
                                iHeightMedium,
                                Text(
                                  '다항식의 연산: 1번 문항',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '강사: 정성우',
                                  style: ISetText.textSection,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              iThinDivider
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                            width: 120,
                            height: 100,
                            child: Image.network(
                              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/5ce32583504683.5d3ee5d2adea1.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$brand_name 문제은행',
                                  style: ISetText.subTitle,
                                ),
                                iHeightMedium,
                                Text(
                                  '다항식의 연산: 1번 문항',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '강사: 정성우',
                                  style: ISetText.textSection,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              iThinDivider
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                            width: 120,
                            height: 100,
                            child: Image.network(
                              'https://mir-s3-cdn-cf.behance.net/project_modules/1400/5ce32583504683.5d3ee5d2adea1.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$brand_name 문제은행',
                                  style: ISetText.subTitle,
                                ),
                                iHeightMedium,
                                Text(
                                  '다항식의 연산: 1번 문항',
                                  style: ISetText.bodyblack,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                iHeightMedium,
                                Text(
                                  '강사: 정성우',
                                  style: ISetText.textSection,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              iThinDivider
            ],
          ),




        ],
      )
    );
  }
}
