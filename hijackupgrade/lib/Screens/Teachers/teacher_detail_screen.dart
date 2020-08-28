import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hijackupgrade/Models/text_model.dart';
import 'package:hijackupgrade/Models/video_product_model.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class TeacherDetailScreen extends StatefulWidget {
  @override
  _TeacherDetailScreenState createState() => _TeacherDetailScreenState();
}

class _TeacherDetailScreenState extends State<TeacherDetailScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _completer = Completer();

    super.initState();
  }

  // 위도 경도
  static const LatLng _centerLatLong = const LatLng(37.308336, 127.085082);

  // 비동기
  Completer<GoogleMapController> _completer;

  var _studentGrade = ['초등부', '중등부', '고등부', '성인부'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          label: Text('전화상담'),
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  //color: black_100.withOpacity(.8),
                ),
                child: InkWell(
                  borderRadius: iBorderRadius,
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: mainColor,
                      size: 16,
                    ),
                  ),
                ),
              ),
              elevation: 0,
              expandedHeight: 300.0,
              pinned: true,
              floating: true,
              title: Text('선생님정보'),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        'http://bigdata.hijack7.co.kr/pro/img_tc/1502954970_%EA%B8%B8%EC%84%B1%EC%9C%A4%EC%83%982.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        //color: mainColor.withOpacity(0.3),
                      ),
                      Positioned(
                        bottom: 20,
                        child: ClipRRect(
                          borderRadius: iBorderRadius,
                          child: BackdropFilter(
                            filter: new ImageFilter.blur(
                                sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: MediaQuery.of(context).size.height / 10,
                              padding: EdgeInsets.all(8.0),
                              color: mainColor.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Text(
                                    '[용인시 수지구]',
                                    style: ITextStyle.subTitleWhite,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                  iHeight8,
                                  Text(
                                    '길선생 영어학원',
                                    style: ITextStyle.titleWhite,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              //floating: true,
              delegate: StickyTabBarDelegate(
                child: TabBar(
                  labelPadding: EdgeInsets.all(0),
                  labelColor: mainColor,
                  indicatorColor: mainColor,
                  controller: _tabController,
                  tabs: <Widget>[
                    Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Tab(text: '학원정보')),
                    Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Tab(text: '온라인강의목록')),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 8),
                            child: Text(
                              '1. 수업대상',
                              style: ITextStyle.body,
                            )),
                        GridView.count(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          childAspectRatio: 4 / 1,
                          children: List.generate(
                              _studentGrade.length,
                              (index) => ListTile(
                                    leading: Icon(
                                      MdiIcons.school,
                                      color: mainColor,
                                    ),
                                    title: Text(
                                      _studentGrade[index],
                                      style: ITextStyle.textSectionBlack,
                                      textAlign: TextAlign.center,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_right,
                                      color: mainColor,
                                    ),
                                  )),
                        ),
                        iHeight16,
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 8),
                            child: Text(
                              '2. 수업비용',
                              style: ITextStyle.body,
                            )),
                        ClipRRect(
                          borderRadius: iBorderRadius,
                          child: Container(
                              color: black_200,
                              height: 100,
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '주 2회 3시간',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '400,000원',
                                    style: ITextStyle.titleBlack,
                                  ),
                                ],
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 8),
                            child: Text(
                              '* 학년별로 수업비용은 다를 수 있습니다. 자세한 내용은 전화상담 해주세요.',
                              style: ITextStyle.captionGrey,
                            )),
                        iHeight16,
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 12),
                            child: Text(
                              '3. 학원위치',
                              style: ITextStyle.body,
                            )),
                        Container(
                          width: double.infinity,
                          height: 300,
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(
                                target: _centerLatLong, zoom: 14),
                            mapType: MapType.normal,
                            onMapCreated: (controller) {
                              _completer.complete(controller);
                            },
                            markers: <Marker>{
                              Marker(
                                  markerId: MarkerId('Home Location'),
                                  position: _centerLatLong,
                                  icon: BitmapDescriptor.defaultMarker),
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpansionTile(
                                leading: Image.network(
                                  '${videoLists[0].tImage}',
                                  fit: BoxFit.cover,
                                ),
                                title: Text('${videoLists[0].tName} 선생님'),
                                subtitle: Text(
                                    '| 시간: 10:15 | 금액: ${videoLists[0].price}원 | '),
                                trailing: Icon(
                                  Icons.play_circle_filled,
                                  color: mainColor,
                                  size: 32,
                                ),
                                children: [
                                  Text('${textModelLists[0].paragraph}')
                                ],
                              ),
                            )),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
