import 'package:admin/theme/i_set_color.dart';
import 'package:admin/theme/i_set_size.dart';
import 'package:admin/theme/i_set_string.dart';
import 'package:admin/theme/i_set_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<charts.Series<RatioOfMenWomen, String>> _seriesData;
  List<charts.Series<RatioByAge, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new RatioOfMenWomen(1980, '10', 30),
      new RatioOfMenWomen(1980, '20', 40),
      new RatioOfMenWomen(1980, '30', 10),
      new RatioOfMenWomen(1980, '40', 10),
      new RatioOfMenWomen(1980, '50', 10),
    ];
    var data2 = [
      new RatioOfMenWomen(1985, '10', 100),
      new RatioOfMenWomen(1980, '20', 150),
      new RatioOfMenWomen(1985, '30', 80),
      new RatioOfMenWomen(1980, '40', 10),
      new RatioOfMenWomen(1980, '50', 10),
    ];
    var data3 = [
      new RatioOfMenWomen(1985, '10', 200),
      new RatioOfMenWomen(1980, '20', 300),
      new RatioOfMenWomen(1985, '30', 180),
      new RatioOfMenWomen(1980, '40', 10),
      new RatioOfMenWomen(1980, '50', 10),
    ];
    var piedata = [
      new RatioByAge('10대', 10.8, Color(0xfffff1ce)),
      new RatioByAge('20대', 35.8, Color(0xffff9312)),
      new RatioByAge('30대', 8.3, Color(0xffd64700)),
      new RatioByAge('40대', 19.2, Color(0xff1abb9c)),
      new RatioByAge('50대', 10.3, Color(0xff016ec5)),
      new RatioByAge('60대 이상', 15.6, Color(0xff013c7e)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (RatioOfMenWomen pollution, _) => pollution.place,
        measureFn: (RatioOfMenWomen pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (RatioOfMenWomen pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffa2bcc3)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (RatioOfMenWomen pollution, _) => pollution.place,
        measureFn: (RatioOfMenWomen pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (RatioOfMenWomen pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff1abb9c)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (RatioOfMenWomen pollution, _) => pollution.place,
        measureFn: (RatioOfMenWomen pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (RatioOfMenWomen pollution, _) =>
            charts.ColorUtil.fromDartColor(mainColor),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (RatioByAge task, _) => task.task,
        measureFn: (RatioByAge task, _) => task.taskvalue,
        colorFn: (RatioByAge task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (RatioByAge row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff84b2d0)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff5691b4)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff013c7e)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<RatioOfMenWomen, String>>();
    _seriesPieData = List<charts.Series<RatioByAge, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                Card(
                  color: mainColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                            iWidthMedium,
                            Text(
                              '전체 이용자',
                              style: ISetText.textSectionWhite,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4White,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '4%', style: ISetText.textSectionWhite),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.male,
                              color: mainFontColor,
                              size: 18,
                            ),
                            iWidthMedium,
                            Text(
                              '남성 이용자',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.female,
                              color: mainFontColor,
                              size: 18,
                            ),
                            iWidthMedium,
                            Text(
                              '여성 이용자',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_ind,
                              color: mainFontColor,
                            ),
                            iWidthMedium,
                            Text(
                              '오늘 등록한 회원수',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: mainColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                            iWidthMedium,
                            Text(
                              '전체 매출',
                              style: ISetText.textSectionWhite,
                            ),
                          ],
                        ),
                        Text(
                          '5000억',
                          style: ISetText.display4White,
                          overflow: TextOverflow.ellipsis,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '4%', style: ISetText.textSectionWhite),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: mainFontColor,
                              size: 18,
                            ),
                            iWidthMedium,
                            Text(
                              '오늘 매출액',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: mainFontColor,
                              size: 18,
                            ),
                            iWidthMedium,
                            Text(
                              '이번달 매출액',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: mainFontColor,
                            ),
                            iWidthMedium,
                            Text(
                              '금년 매출액',
                              style: ISetText.textSection,
                            ),
                          ],
                        ),
                        Text(
                          '2500',
                          style: ISetText.display4,
                        ),
                        iHeightSmall,
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '지난주 대비 ',
                            style: ISetText.textSectionGrey,
                            children: <TextSpan>[
                              TextSpan(text: '4%', style: ISetText.textSection),
                              TextSpan(text: ' 증가'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          iVerticalDivider,
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('전체 매출추이', style: ISetText.title),
                          iHeightLarge,
                          Expanded(
                            child: charts.LineChart(_seriesLineData,
                                defaultRenderer: new charts.LineRendererConfig(
                                    includeArea: true, stacked: true),
                                animate: true,
                                animationDuration: Duration(seconds: 2),
                                behaviors: [
                                  new charts.ChartTitle('월',
                                      behaviorPosition:
                                          charts.BehaviorPosition.bottom,
                                      titleOutsideJustification: charts
                                          .OutsideJustification.middleDrawArea),
                                  new charts.ChartTitle('판매',
                                      behaviorPosition:
                                          charts.BehaviorPosition.start,
                                      titleOutsideJustification: charts
                                          .OutsideJustification.middleDrawArea),
                                  new charts.ChartTitle(
                                    '파트별',
                                    behaviorPosition: charts.BehaviorPosition.end,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea,
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text('연령별 남녀 이용자 수', style: ISetText.title),
                          iHeightLarge,
                          Expanded(
                            child: charts.BarChart(
                              _seriesData,
                              animate: true,
                              barGroupingType: charts.BarGroupingType.grouped,
                              //behaviors: [new charts.SeriesLegend()],
                              animationDuration: Duration(seconds: 2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Text('전체 이용자 비율', style: ISetText.title),
                          iHeightLarge,
                          Expanded(
                            child: charts.PieChart(_seriesPieData,
                                animate: true,
                                animationDuration: Duration(seconds: 2),
                                behaviors: [
                                  new charts.DatumLegend(
                                    outsideJustification:
                                        charts.OutsideJustification.endDrawArea,
                                    horizontalFirst: false,
                                    desiredMaxRows: 2,
                                    cellPadding: new EdgeInsets.only(
                                        right: 4.0, bottom: 4.0),
                                    entryTextStyle: charts.TextStyleSpec(
                                        color: charts
                                            .MaterialPalette.purple.shadeDefault,
                                        fontFamily: 'Georgia',
                                        fontSize: 11),
                                  )
                                ],
                                defaultRenderer: new charts.ArcRendererConfig(
                                    arcWidth: 100,
                                    arcRendererDecorators: [
                                      new charts.ArcLabelDecorator(
                                          labelPosition:
                                              charts.ArcLabelPosition.inside)
                                    ])),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          iVerticalDivider,
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  child: TextField(
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: mainColor,
                      ),
                      border: InputBorder.none,
                      hintText: '1:1 문의게시판의 글을 검색해주세요',
                      hintStyle: TextStyle(color: mainColor),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.end,
                        leading: CircleAvatar(
                            backgroundColor: black_50,
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/avatar1.jpg')),
                        title: Text('질문 있습니다.'),
                        trailing: Text('2020-06-01'),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(dummyText),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: '판매업체 ',
                                style: TextStyle(color: Colors.blueAccent),
                                children: <TextSpan>[
                                  TextSpan(text: '이미자', style: TextStyle(color: black_900)),
                                  TextSpan(text: '(mija@naver.com)', style: TextStyle(color: black_900)),
                                ],
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: [
                              FlatButton(
                                onPressed: (){},
                                child: Text('답변', style: TextStyle(color: Colors.white),),
                                color: Colors.blueAccent,
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: Text('삭제', style: TextStyle(color: Colors.white),),
                                color: Colors.redAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                      ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.end,
                        leading: CircleAvatar(
                            backgroundColor: black_50,
                            radius: 25,
                            backgroundImage:
                            AssetImage('assets/images/avatar2.jpg')),
                        title: Text('질문 있습니다.'),
                        trailing: Text('2020-06-01'),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(dummyText),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: '판매업체 ',
                                style: TextStyle(color: Colors.blueAccent),
                                children: <TextSpan>[
                                  TextSpan(text: '이미자', style: TextStyle(color: black_900)),
                                  TextSpan(text: '(mija@naver.com)', style: TextStyle(color: black_900)),
                                ],
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: [
                              FlatButton(
                                onPressed: (){},
                                child: Text('답변', style: TextStyle(color: Colors.white),),
                                color: Colors.blueAccent,
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: Text('삭제', style: TextStyle(color: Colors.white),),
                                color: Colors.redAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RatioOfMenWomen {
  String place;
  int year;
  int quantity;

  RatioOfMenWomen(this.year, this.place, this.quantity);
}

class RatioByAge {
  String task;
  double taskvalue;
  Color colorval;

  RatioByAge(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
