import 'package:flutter/material.dart';

class TestUser {
  final int id;
  final String name;
  final String school;
  final String sex;
  final int grade;
  final String imgUrl;

  TestUser(
      {this.id,
      this.sex,
      @required this.name,
      @required this.school,
      @required this.grade,
      @required this.imgUrl});
}

var userLists = <TestUser>[
  TestUser(
      name: 'hanso',
      school: 'susung',
      grade: 1,
      imgUrl:
          'https://mblogthumb-phinf.pstatic.net/MjAyMDAzMjlfMzkg/MDAxNTg1NDA4ODEzMzI2.TgYHw1rfLOzhNud2l1TQnYpBWO2C5s9gaILeSU07HLIg.jni1H76nFFFoYqBEzRZDccNAV8uLzzcxhtsvxqN7QCIg.PNG.tarkyami/%ED%95%9C%EC%86%8C%ED%9D%AC28.png?type=w800'),
  TestUser(
      name: 'jack Kim',
      school: 'susung',
      grade: 1,
      imgUrl:
          'https://img4.yna.co.kr/photo/cms/2019/05/02/02/PCM20190502000402370_P2.jpg'),
  TestUser(
      name: '강호동',
      school: '부산고등학교',
      grade: 1,
      imgUrl: 'https://img.hankyung.com/photo/201904/AA.19318431.1.jpg'),
  TestUser(
      name: 'jack lee',
      school: '울산여자고등학교',
      grade: 1,
      imgUrl:
          'https://img.sbs.co.kr/newsnet/etv/upload/2018/10/19/30000615440_700.jpg'),
  TestUser(
      name: '김태희',
      school: '울산여자고등학교',
      grade: 1,
      imgUrl:
          'https://i.pinimg.com/736x/56/46/d0/5646d0b15745bc28d3ff00bf11f89f1a.jpg'),
  TestUser(
      name: '이병헌',
      school: '용인고등학교',
      grade: 1,
      imgUrl:
          'https://image.chosun.com/sitedata/image/201801/04/2018010401407_0.jpg'),
  TestUser(
      name: '수애',
      school: '수원고등학교',
      grade: 1,
      imgUrl: 'https://img.hankyung.com/photo/201808/03.17576460.1.jpg'),
  TestUser(
      name: '소간지',
      school: '서울남고',
      grade: 1,
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/So_Ji-sub.jpg/250px-So_Ji-sub.jpg'),
  TestUser(
      name: '한효주',
      school: '동탄고등학교',
      grade: 1,
      imgUrl: 'https://topclass.chosun.com/news_img/1510/1510_008.jpg'),
  TestUser(
      name: '한효주',
      school: '동탄고등학교',
      grade: 1,
      imgUrl: 'https://topclass.chosun.com/news_img/1510/1510_008.jpg'),
  TestUser(
      name: '한효주',
      school: '동탄고등학교',
      grade: 1,
      imgUrl: 'https://topclass.chosun.com/news_img/1510/1510_008.jpg'),
  TestUser(
      name: '한효주',
      school: '동탄고등학교',
      grade: 1,
      imgUrl: 'https://topclass.chosun.com/news_img/1510/1510_008.jpg'),
];
