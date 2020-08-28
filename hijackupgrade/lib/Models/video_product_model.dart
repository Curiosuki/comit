import 'package:flutter/cupertino.dart';

class VideoProductModel {
  String id;
  String videoUrl;
  int price;
  String tName;
  String tImage;

  VideoProductModel(
      {this.id,
      @required this.videoUrl,
      @required this.price,
      @required this.tName,
      @required this.tImage});
}

List<VideoProductModel> videoLists = [
  VideoProductModel(
      tName: '길성윤',
      videoUrl:
          'https://player.vimeo.com/external/410511256.hd.mp4?s=dc7fcabc09dbee4830d7ecb0a64cdf63dfd49835&profile_id=174',
      price: 3000,
      tImage:
          'http://bigdata.hijack7.co.kr/pro/img_tc/1502954970_%EA%B8%B8%EC%84%B1%EC%9C%A4%EC%83%982.png'),
  VideoProductModel(
      tName: '손명은',
      videoUrl:
          'https://player.vimeo.com/external/438449998.sd.mp4?s=c74aef57bcb2a6e33ad8e18f2398b67d8d23967a&profile_id=165',
      price: 2500,
      tImage: 'http://bigdata.hijack7.co.kr/pro/img_tc/1536816592_16.jpg'),
  VideoProductModel(
      tName: '이경희',
      videoUrl:
          'https://player.vimeo.com/external/435682548.sd.mp4?s=c298883a3cd248f29d6267b42037cbfd65671684&profile_id=165',
      price: 2000,
      tImage: 'http://bigdata.hijack7.co.kr/pro/img_tc/1552696888_4943.jpg'),
];
