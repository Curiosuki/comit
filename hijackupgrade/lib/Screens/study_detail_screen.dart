import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

class StudyDetailScreen extends StatefulWidget {
  @override
  _StudyDetailScreenState createState() => _StudyDetailScreenState();
}

class _StudyDetailScreenState extends State<StudyDetailScreen>
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
                backgroundColor: black_50,
                elevation: 0,
                flexibleSpace: TabBar(
                  labelPadding: EdgeInsets.symmetric(vertical: 8),
                  indicatorColor: mainColor,
                  tabs: [
                    Text('스터디소개', style: ITextStyle.body,),
                    Text('스터디멤버', style: ITextStyle.body,)
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Text('a'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://mblogthumb-phinf.pstatic.net/MjAyMDAzMjlfMzkg/MDAxNTg1NDA4ODEzMzI2.TgYHw1rfLOzhNud2l1TQnYpBWO2C5s9gaILeSU07HLIg.jni1H76nFFFoYqBEzRZDccNAV8uLzzcxhtsvxqN7QCIg.PNG.tarkyami/%ED%95%9C%EC%86%8C%ED%9D%AC28.png?type=w800'),
                    ),
                    title: Text('홍길동'),
                    subtitle: Text('용인시 수지구 | 수성고등학교 1학년'),
                    trailing: Icon(Icons.arrow_right, color: mainColor,),
                  ))
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
              width: double.infinity,
              height: double.infinity,
              child: Image.network('https://previews.123rf.com/images/bialasiewicz/bialasiewicz1507/bialasiewicz150700404/42093880-vertical-view-of-modern-study-room-design.jpg', fit: BoxFit.cover)),
          Positioned(
            top: 32,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: black_50.withOpacity(.8),
              ),
              child: InkWell(
                borderRadius: iBorderRadius,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_border),
                ),
              ),
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
                    color: mainColor.withOpacity(0.3),
                    child: Material(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              '[ 용인 수지구 ]',
                              style: ITextStyle.title.copyWith(color: black_50),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '같이 인강스터디 모집합니다.',
                              style:
                                  ITextStyle.subTitle.copyWith(color: black_50),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              height: 100,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              child: RaisedButton(
                                elevation: 6,
                                shape: StadiumBorder(),
                                color: mainColor,
                                splashColor: mainColor.withOpacity(0.2),
                                onPressed: () {},
                                child: Text(
                                  '스터디 신청하기',
                                  style:
                                      ITextStyle.body.copyWith(color: black_50),
                                ),
                              ),
                            ),
                          ),
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
                                                '자세히 보기',
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
