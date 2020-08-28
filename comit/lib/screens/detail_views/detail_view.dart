import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:comit/components/button/back_button.dart';
import 'package:comit/components/button/heart_button.dart';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/components/message_bubble.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'tab1_view.dart';
import 'tab2_view.dart';
import 'tab3_view.dart';
import 'tab4_view.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> with TickerProviderStateMixin {
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
        length: 4, // This is the number of tabs.
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
                flexibleSpace: Center(
                  child: TabBar(
                    labelPadding: EdgeInsets.symmetric(vertical: 8),
                    indicatorColor: mainColor,
                    tabs: [
                      Text(
                        'Intro',
                        style:
                        ISetText.body.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Curriculum',
                        style:
                        ISetText.body.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Schedule',
                        style:
                        ISetText.body.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Review',
                        style:
                        ISetText.body.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Tab1View(),
              Tab2View(),
              Tab3View(),
              Tab4View(),
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
    // TODO: implement build
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
            child: CarouselSlider(
              height: double.infinity,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              items: <Widget>[
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/images/vertical_1.jpg',
                        fit: BoxFit.cover)),
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/images/vertical_2.jpg',
                        fit: BoxFit.cover)),
                Container(
                    width: double.infinity,
                    child: Image.asset('assets/images/vertical_3.jpg',
                        fit: BoxFit.cover)),
              ],
            ),
          ),
          Positioned(
            top: 32,
            right: 16,
            child: HeartButton(),
          ),
          Positioned(
            top: 32,
            left: 16,
            child: BackArrowButton(),
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
                              '[ March ]',
                              style:
                                  ISetText.title.copyWith(color: black_50),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Web Development for Beginners',
                              style: ISetText.subTitle
                                  .copyWith(color: black_50),
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
                                splashColor: backgroundColor.withOpacity(0.2),
                                onPressed: () {},
                                child: Text(
                                  'Take the Course',
                                  style: ISetText.body
                                      .copyWith(color: black_50),
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
                                        splashColor:
                                            backgroundColor.withOpacity(0.2),
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
                                                'More Details',
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
          Positioned(
            bottom: 200,
            right: 60,
            child: Opacity(
              opacity: getOpValue(minValue, heightValue / 5),
              child: AvatarButton(
                radius: 30.0, avatarUrl: sellerInfo[index].userAvatarUrl,
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            right: 120,
            child: Opacity(
                opacity: getOpValue(minValue, heightValue / 5),
                child: MessageBubble()),
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
