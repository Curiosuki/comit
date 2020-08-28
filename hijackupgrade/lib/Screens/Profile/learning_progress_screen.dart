import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Models/video_product_model.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_string.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/i_Button_PhotoPicker.dart';
import 'package:multi_charts/multi_charts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LearningProgressScreen extends StatefulWidget {
  @override
  _LearningProgressScreenState createState() => _LearningProgressScreenState();
}

class _LearningProgressScreenState extends State<LearningProgressScreen>
    with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);

  AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          controller: scrollController,
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                pinned: true,
                delegate: TabHeader(
                  (MediaQuery.of(context).size.height),
                      () {
                    scrollController.animateTo(
                        MediaQuery.of(context).size.height -
                            MediaQuery.of(context).size.height / 5,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
              ),
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                elevation: 0,
                flexibleSpace: TabBar(
                  labelPadding: EdgeInsets.symmetric(vertical: 8),
                  indicatorColor: mainColor,
                  tabs: [
                    Text('학습통계', style: ITextStyle.body,),
                    Text('구매강좌', style: ITextStyle.body,)
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('전체 시청한 강좌 수', style: ITextStyle.title,),
                            iHeight16,
                            Text('300', style: ITextStyle.display4,),
                          ],
                        )
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            iHeight16,
                            Text('평균 시청률', style: ITextStyle.title,),
                            iHeight16,
                            CircularPercentIndicator(
                              animationDuration: 1000,
                              radius: 120.0,
                              lineWidth: 10.0,
                              animation: true,
                              percent: 0.7,
                              center: new Text(
                                "70.0%",
                                style: ITextStyle.display1,
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: mainColor,
                            ),
                            iHeight16,

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Card(
                          elevation: 2,
                          child: Column(
                            children: [
                              iHeight16,
                              Text('전체 파트별 점수', style: ITextStyle.title,),
                              iHeight16,
                              RadarChart(
                                values: [3, 2, 4, 7, 9],
                                labels: [
                                  "중심내용",
                                  "세부내용",
                                  "논리관계",
                                  "맥락파악",
                                  "문법어휘",
                                ],
                                maxValue: 10,
                                fillColor: mainColor,
                                chartRadiusFactor: 0.7,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                iHeight16,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('주제')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('제목')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('요지')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('주장')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('빈칸')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('요지')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('목적')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('속담')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('일치')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('무관')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('어법')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('어휘')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('연결')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('삽입')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('지칭')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('심경')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('무드')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('도표')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 100, child: Text('요약')),
                                    LinearPercentIndicator(
                                      width: 150,
                                      animation: true,
                                      lineHeight: 15.0,
                                      animationDuration: 1000,
                                      percent: 0.8,
                                      center: Text("80.0%", style: ITextStyle.captionWhite,),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      progressColor: mainColor,
                                    ),
                                  ],
                                ),
                                iHeight16,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              ListView.builder(
                  itemCount: videoLists.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTile(
                        leading: Image.network(
                          '${videoLists[index].tImage}',
                          fit: BoxFit.cover,
                        ),
                        title: Text('${videoLists[index].tName} 선생님'),
                        subtitle: Text(
                            '| 시간: 10:15 | 금액: ${videoLists[index].price}원 | '),
                        trailing: Text('80%'),
                        children: [
                          Text(dummyTextE),
                          FlatButton(
                            color: mainColor,
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.white,
                                  size: 32,
                                ),
                                iWidth16,
                                Text('시청하기', style: ITextStyle.bodyWhite,)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ],

          ),
        ),
      ),
    );
  }
}

class TabHeader extends SliverPersistentHeaderDelegate {
  final VoidCallback callback;
  final double heightValue;

  var index = 0;

  TabHeader(this.heightValue, this.callback);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var minValue = (shrinkOffset < heightValue - heightValue / 5
        ? shrinkOffset
        : heightValue / 5);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: heightValue - minValue,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            color: Colors.white,
              width: double.infinity,
              height: double.infinity,
          ),
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://mblogthumb-phinf.pstatic.net/MjAyMDAzMjlfMzkg/MDAxNTg1NDA4ODEzMzI2.TgYHw1rfLOzhNud2l1TQnYpBWO2C5s9gaILeSU07HLIg.jni1H76nFFFoYqBEzRZDccNAV8uLzzcxhtsvxqN7QCIg.PNG.tarkyami/%ED%95%9C%EC%86%8C%ED%9D%AC28.png?type=w800'),
            ),
          ),

          Positioned(
            top: 32,
            left: 16,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: black_50.withOpacity(.8),
              ),
              child: InkWell(
                borderRadius: iBorderRadius,
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: mainColor,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: getOpValue(minValue, heightValue / 5),
            child: Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    color: mainColor.withOpacity(1),
                    child: Material(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.all(16),
                              alignment: Alignment.center,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                              child: Text(
                                '현재 신청강좌: 100개',
                                style: ITextStyle.title,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Flexible(
                                  child: Text(
                                    '한소희',
                                    style: ITextStyle.title.copyWith(color: black_50),
                                  ),
                                ),
                                iHeight8,
                                Flexible(
                                  child: Text(
                                    '울산여자고등학교 1학년',
                                    style:
                                    ITextStyle.subTitle.copyWith(color: black_50),
                                  ),
                                ),
                                iHeight16,
                                Flexible(
                                  child: Container(
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                      child: new BackdropFilter(
                                        filter: new ImageFilter.blur(
                                            sigmaX: 10.0, sigmaY: 10.0),
                                        child: Container(
                                          color: Colors.black12,
                                          child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              highlightColor: Colors.transparent,
                                              splashColor: mainColor.withOpacity(0.2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(38)),
                                              onTap: () {
                                                try {
                                                  callback();
                                                } catch (e) {}
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16,
                                                    right: 16,
                                                    top: 4,
                                                    bottom: 4),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      '나의 학습이력 자세히 보기',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                          top: 2),
                                                      child: Icon(
                                                        Icons.keyboard_arrow_down,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                iHeight8
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => heightValue;

  @override
  // TODO: implement minExtent
  double get minExtent => heightValue / 5;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}

double getOpValue(double minValue, double maxValue) {
  var data = (1.0 - (minValue / maxValue));
  if (data < 0.0) {
    return 0.0;
  } else if (data >= 0 && data <= 1) {
    return data;
  } else {
    return 1.0;
  }
}
