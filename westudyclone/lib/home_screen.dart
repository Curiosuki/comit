import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:westudyclone/theme/i_set_color.dart';
import 'package:westudyclone/theme/i_set_size.dart';
import 'package:westudyclone/theme/i_set_text.dart';

class HomeScreen extends StatelessWidget {
  get iBorderRadiusRound => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: mainColor,
          onPressed: (){},
          label: Text('스터디 개설')
      ),
      appBar: AppBar(
        title: Text('WeStudy', style: ISetText.title,),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, color: mainColor, size: 32,),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              '우리동네 스터디',
              style: ISetText.title,
            ),
            Container(
              //color: Colors.amber,
              child: CarouselSlider(
                aspectRatio: 1.0,
                viewportFraction: 1.0,
                items: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Flexible(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://m1.daumcdn.net/cfile176/image/99B382425D105DE608474D',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          iHeightMedium,
                          Text('중국어 영어 교환 스터디 하실분', style: ISetText.titleBlack,),
                          iDivider,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [
                                  Icon(Icons.location_on, color: mainColor,),
                                  iWidthSmall,
                                  Text('서울시 강남구'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.people, color: mainColor,),
                                  iWidthSmall,
                                  Text('8/10'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, color: mainColor,),
                                  iWidthSmall,
                                  Text('생성된지 10일째'),
                                ],
                              ),
                            ],
                          )

                        ],
                      )),
                ],
              ),
            ),
            Text(
              '스터디장소 추천',
              style: ISetText.title,
            ),
            iHeightMedium,
            CarouselSlider(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              items: [
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://st-c2c-conectspass.s3.amazonaws.com/prod/uploads/attachment/923/IMG_0127.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
            ],

            ),
            iHeightLarge,
            Text(
              '전문가 스터디',
              style: ISetText.title,
            ),
            Container(
              //color: Colors.amber,
              child: CarouselSlider(
                aspectRatio: 1.0,
                viewportFraction: 1.0,
                items: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSxJTU_83CFSF9QWRdbzLC-ervIE4nZD-785CzsMDIZ7dCzZFok&usqp=CAU',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          iHeightMedium,
                          Text('중국어 영어 교환 스터디 하실분', style: ISetText.titleBlack,),
                          iDivider,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [
                                  Icon(Icons.location_on, color: mainColor,),
                                  iWidthSmall,
                                  Text('서울시 강남구'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.people, color: mainColor,),
                                  iWidthSmall,
                                  Text('8/10'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today, color: mainColor,),
                                  iWidthSmall,
                                  Text('생성된지 10일째'),
                                ],
                              ),
                            ],
                          )

                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
