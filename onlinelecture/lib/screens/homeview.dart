import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_size.dart';
import 'package:onlinelecture/theme/i_set_string.dart';
import 'package:onlinelecture/theme/i_set_text.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {  },
        icon: Icon(Icons.phone),
        label: Text('상담전화'),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(brand_name),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            height: 240,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
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
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Image.network(
                'http://edudonga.com/data/article/1903/0ad1c3b65cf738e1cd969870494eb0c0_1551663593_3448.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            height: 80,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: mainColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.play_circle_filled, color: Colors.white, size: 30,),
                        ),
                        Text('인터뷰 영상', style: ISetText.captionWhite,)
                      ],
                    ),
                  ),
                ),
                iWidthSmall,
                Expanded(
                  child: Container(
                    color: mainColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(MdiIcons.star, color: Colors.white, size: 30,),
                        ),
                        Text('명예의 전당', style: ISetText.captionWhite,)
                      ],
                    ),
                  ),
                ),
                iWidthSmall,
                Expanded(
                  child: Container(
                    color: mainColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(FontAwesomeIcons.blog, color: Colors.white, size: 30,),
                        ),
                        Text('블로그보기', style: ISetText.captionWhite,)
                      ],
                    ),
                  ),
                ),
                iWidthSmall,
                Expanded(
                  child: Container(
                    color: mainColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.rate_review, color: Colors.white, size: 30,),
                        ),
                        Text('수강후기', style: ISetText.captionWhite,)
                      ],
                    ),
                  ),
                ),
                iWidthSmall,
                Expanded(
                  child: Container(
                    color: mainColor.withOpacity(0.9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.people_outline, color: Colors.white, size: 30,),
                        ),
                        Text('선생님 보기', style: ISetText.captionWhite,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          iHeightMedium,
          iThickDivider,
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '공지사항',
                    style: ISetText.body,
                  ),
                  Icon(Icons.navigate_next)
                ],
              )),
          ListTile(
            onTap: (){},
            leading: Text('공지'),
            title: Text('현우진 수학과학학원 방역상황안내', style: ISetText.textSectionBlack),
          ),
          Divider(thickness: 1, height: 0, color: black_300),
          ListTile(
            onTap: (){},
            leading: Text('소식'),
            title: Text('코로나 대비 예비마스크 준비해두었습니다.', style: ISetText.textSectionBlack),
          ),
          Divider(thickness: 1, height: 0, color: black_300),
          ListTile(
            onTap: (){},
            leading: Text('이벤트'),
            title: Text('현우진 수학과학학원 매탄 2관 오픈', style: ISetText.textSectionBlack),
          ),
          iThickDivider,
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '추천이벤트',
                    style: ISetText.body,
                  ),
                  Icon(Icons.navigate_next)
                ],
              )),
          CarouselSlider.builder(
            height: 160,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
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
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Image.network(
                'https://www.alzio.co.kr/expert/img/event_banner_pc_720.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          iHeightMedium,
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '신규강의',
                    style: ISetText.body,
                  ),
                  Icon(Icons.navigate_next)
                ],
              )),
          iThickDivider,
          ListTile(
            onTap: (){},
            leading: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/28a7ec83504683.5d3ee5d2ae422.png'),
            title: Text('[고등수학] 미적분 개념강의', style: ISetText.textSectionBlack),
            subtitle: Text('현우진', style: ISetText.captionBlack),
          ),
          ListTile(
            onTap: (){},
            leading: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/87d5df83504683.5d3ee5d2ae979.png'),
            title: Text('[고등수학] 미적분 개념강의', style: ISetText.textSectionBlack),
            subtitle: Text('현우진', style: ISetText.captionBlack),
          ),
          ListTile(
            onTap: (){},
            leading: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/46a2a883504683.5d3ee5d2aee7a.png'),
            title: Text('[고등수학] 미적분 개념강의', style: ISetText.textSectionBlack),
            subtitle: Text('현우진', style: ISetText.captionBlack),
          ),
          ListTile(
            onTap: (){},
            leading: Image.network('http://www.wbcb.co.kr/news/photo/201901/55666_61866_645.jpg'),
            title: Text('[고등수학] 미적분 개념강의', style: ISetText.textSectionBlack),
            subtitle: Text('현우진', style: ISetText.captionBlack),
          ),
          iHeightLarge,
          iThickDivider,


        ],
      ),
    );
  }
}
