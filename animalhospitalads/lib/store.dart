import 'package:animalhospitalads/components/locationview.dart';
import 'package:animalhospitalads/theme/i_set_color.dart';
import 'package:animalhospitalads/theme/i_set_icons.dart';
import 'package:animalhospitalads/theme/i_set_size.dart';
import 'package:animalhospitalads/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'components/avatar_button.dart';


class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store>  with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _silverBuilder(BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          expandedHeight: 250.0,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: new Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                      height: double.infinity,
                      child: Image.asset('assets/images/hospital.jpeg', fit: BoxFit.cover,)),
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text('이노동물병원', style: ISetText.subTitle,),
                        iHeightMedium,
                        SmoothStarRating(
                          allowHalfRating: true,
                          starCount: 5,
                          rating: 3,
                          size: 18,
                          color: mainColor,
                          borderColor: mainColor,
                        ),
                      ],
                    ) ,
                  )
                ],
              ),
            ),
          ),
        ),
        new SliverPersistentHeader(
          pinned: true,
          floating: true,
          delegate: _SilverAppBarDelegate(TabBar(
            labelStyle: ISetText.body,
            labelColor: mainColor,
            indicatorColor: mainColor,
            controller: _tabController,
            tabs: <Widget>[
              new Tab(
                text: "병원안내",
              ),
              new Tab(
                text: "수술가격",
              ),
            ],
          )),
        ),
      ];
    }

    return new Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: _silverBuilder,
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            Column(
            children: <Widget>[
              iHeightMedium,
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '· 대표 담당의',
                      style: ISetText.body,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: AvatarButton(radius: 50.0, avatarUrl: 'assets/images/avatar1.jpg',),
              ),
              iHeightMedium,
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: '이수지',
                        style:
                        ISetText.textSectionBlack),
                    TextSpan(text: ' 대표담당의', style: ISetText.textSectionGrey),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  iHeightLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iChrome,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text('www.animal.com', style: ISetText.textSectionGrey,),
                      ),
                    ],
                  ),
                  iHeightMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iYoutube,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text('www.youtube.com', style: ISetText.textSectionGrey,),
                      ),
                    ],
                  ),
                  iHeightLarge,
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '· 병원위치',
                          style: ISetText.body,
                        ),
                      ),
                    ],
                  ),
                 // LocationView(),
                  iHeightMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: iLocation,
                      ),
                      Expanded(
                        flex: 9,
                        child: Text('수원시 영통구 광교동 111-111'),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
            Column(
              children: [
                ListTile(
                  title: Text('· 중성화수술'),
                  trailing: Text('90,000원'),
                ),
                ListTile(
                  title: Text('· 중성화수술'),
                  trailing: Text('90,000원'),
                ),
                ListTile(
                  title: Text('·중성화수술'),
                  trailing: Text('90,000원'),
                ),
                ListTile(
                  title: Text('· 중성화수술'),
                  trailing: Text('90,000원'),
                ),
                ListTile(
                  title: Text('· 중성화수술'),
                  trailing: Text('90,000원'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _SilverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SilverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
