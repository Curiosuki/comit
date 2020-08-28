import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hakwons {
  String hakwonName;
  Marker marker;
  String phoneNum;
  String address;
  String tName;
  String tImage;

  Hakwons({this.hakwonName, this.tName, this.tImage, this.marker, this.phoneNum, this.address});
}

List<Hakwons> hakwonLists = [
  Hakwons(
    hakwonName: '길선생 영어학원',
    phoneNum: '010-1234-1514',
    address: '용인시 수지구 어쩌구 저쩌구',
    tName: '길성윤',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1502954970_%EA%B8%B8%EC%84%B1%EC%9C%A4%EC%83%982.png',
    marker: Marker(
        markerId: MarkerId('1'),
        position: LatLng(37.308336, 127.085082),
        infoWindow: InfoWindow(title: '길선생 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '김태은 영어학원',
    address: '화성시 동탄 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '김태은',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1493272485_%EA%B9%80%ED%83%9C%EC%9D%80%EC%83%982.png',
    marker: Marker(
        markerId: MarkerId('2'),
        position: LatLng(37.213052, 127.079843),
        infoWindow: InfoWindow(title: '김태은 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '에이블 영어학원',
    address: '서울시 노원구 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '신은주',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1503307201_%EC%8B%A0%EC%9D%80%EC%A3%BC%EC%83%982.png',
    marker: Marker(
        markerId: MarkerId('3'),
        position: LatLng(37.553397, 127.089867),
        infoWindow: InfoWindow(title: '에이블 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '키스톤 영어학원',
    address: '일산 화정동 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '안성혜',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1570899558_4943.png',
    marker: Marker(
        markerId: MarkerId('3'),
        position: LatLng(37.269093, 127.003050),
        infoWindow: InfoWindow(title: '키스톤 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '키스톤 영어학원',
    address: '일산 화정동 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '이경',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1552696888_4943.jpg',
    marker: Marker(
        markerId: MarkerId('3'),
        position: LatLng(37.269093, 127.003050),
        infoWindow: InfoWindow(title: '키스톤 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '신의한수 영어학원',
    address: '일산 화정동 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '손명',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1536816592_16.jpg',
    marker: Marker(
        markerId: MarkerId('3'),
        position: LatLng(37.269093, 127.003050),
        infoWindow: InfoWindow(title: '키스톤 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
  Hakwons(
    hakwonName: '더나은 영어학원',
    address: '인천 어쩌구 저쩌구',
    phoneNum: '010-1234-1514',
    tName: '박소라',
    tImage:
    'http://bigdata.hijack7.co.kr/pro/img_tc/1522933120_thumb_park.jpg',
    marker: Marker(
        markerId: MarkerId('3'),
        position: LatLng(37.269593, 127.033050),
        infoWindow: InfoWindow(title: '키스톤 영어학원'),
        icon:
        BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed)),
  ),
];
