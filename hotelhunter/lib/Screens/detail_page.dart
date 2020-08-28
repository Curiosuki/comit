import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_string.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Form_Review.dart';
import 'package:hotelhunter/Widgets/i_ListTile_Review.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _amenities = ['Hair dryer', 'Dishwasher', 'Iron', 'Wifi', 'Carport'];

  // 위도 경도
  static const LatLng _centerLatLong = const LatLng(45.521563, -122.677433);

  // 비동기
  Completer<GoogleMapController> _completer;

  // initState 함수
  @override
  void initState() {
    _completer = Completer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/bookingCalendarPage'),
        label: Text(
          '바로예약',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.bookmark,
          color: Colors.white,
        ),
        elevation: 3,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //floating: true,
            pinned: true,
            //snap: true,
            stretchTriggerOffset: 300,
            expandedHeight: 300,
            flexibleSpace: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  child: Image.asset(
                    'assets/images/apt1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 450,
                  height: 60,
                  padding: const EdgeInsets.all(16.0),
                  color: mainColor.withOpacity(0.5),
                  child: Text(
                    '남양주 장현 수목원자락 산 밑 아파트',
                    style: ITextStyle.subHeadlineWhite,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  iHeight16,
                  RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                      text: '70,000',
                      style: ITextStyle.display1,
                      children: <TextSpan>[
                        TextSpan(text: '원/시간', style: ITextStyle.bodyGrey),
                      ],
                    ),
                  ),
                  iDivider,
                  ListTile(
                    onTap: () => Navigator.pushNamed(context, '/viewProfilePage'),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/avatar1.jpg'),
                    ),
                    subtitle: Text(dummyText),
                  ),
                  iDivider,
                  DetailTile(
                    iconData: Icons.home,
                    category: '아파트',
                    categoryInfo: '게스트 2명',
                  ),
                  DetailTile(
                    iconData: Icons.hotel,
                    category: '침실',
                    categoryInfo: '킹사이즈 1',
                  ),
                  DetailTile(
                    iconData: Icons.wc,
                    category: '화장실',
                    categoryInfo: '플 1',
                  ),
                  iDivider,
                  Text(
                    '편의시설',
                    style: ITextStyle.title,
                  ),
                  iHeight16,
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 1,
                    children: List.generate(
                        _amenities.length,
                            (index) => Text(
                          _amenities[index],
                          style: ITextStyle.bodyblack,
                        )),
                  ),
                  iDivider,
                  Text(
                    '위치',
                    style: ITextStyle.title,
                  ),
                  iHeight16,
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: GoogleMap(
                      initialCameraPosition:
                      CameraPosition(target: _centerLatLong, zoom: 14),
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
                  iDivider,
                  Text(
                    '리뷰 ',
                    style: ITextStyle.subTitle,
                  ),
                  iHeight8,
                  IFormReview(),
                  iDivider,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) => ITileReview(),
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class DetailTile extends StatelessWidget {
  final IconData iconData;
  final String category;
  final String categoryInfo;

  DetailTile({this.iconData, this.category, this.categoryInfo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: mainColor,
        size: 30,
      ),
      title: Text(
        category,
        style: ITextStyle.subTitleBlack,
      ),
      subtitle: Text(categoryInfo),
    );
  }
}
