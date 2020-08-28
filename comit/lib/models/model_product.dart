import 'package:comit/models/model_category.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Product {

  // 기본정보
  String id;
  Category category;
  String productTitle; // 상품명
  int minNumberOfParticipants; // 최소인원
  int maxNumberOfParticipants; // 최대인원
  List<DateTime> dateTime; // 클래스 시간, 타임
  int totalNumberOfParticipants; // 전체 수업신청자수

  // 위치관련 정보
  String address; // 주소
  double km; // km
  LatLng locationCoordinates; // 위도 경도

  //
  String tutorComments; // 버블멘트
  String whoIsEligible; // 대상
  String classIntroduction; // 수업소개

  // 수업료
  int totalWeeks; // 전체 주수
  int daysPerWeek; // 주당 날
  int hoursPerClass; // 수업당 시간
  double feePerHour; // 시간당 가격

  //
  List<String> curriculum; // 커리큘럼

  //
  List <String> videoUrl; // 비디오 url
  String thumbNail; // 썸네일

  bool isFavorite; // 하트 좋아요


  List imagesList; // horizontal image list
  String whoIsTutor; // 선생님 소개

  // Tab2

  // Tab4
  double rating; // 리뷰
  int countViews;


  Product({this.id, this.category, this.productTitle,
    this.minNumberOfParticipants, this.maxNumberOfParticipants, this.dateTime,
    this.totalNumberOfParticipants, this.address, this.km,
    this.locationCoordinates, this.tutorComments, this.whoIsEligible,
    this.classIntroduction, this.totalWeeks, this.daysPerWeek,
    this.hoursPerClass, this.feePerHour, this.curriculum, this.videoUrl,
    this.thumbNail, this.isFavorite, this.imagesList, this.whoIsTutor,
    this.rating, this.countViews, });
}

List<Product> productLists = [
  Product(
      id: 'p1',
      productTitle: 'Web Development for beginners',
      feePerHour: 20,
      thumbNail: 'assets/images/study_1.jpg',
      address: '463 7th Ave',
      km: 3.5,
      locationCoordinates: LatLng(40.745803, -73.988213),
      countViews: 123456,
      rating: 3.5,
      imagesList: [
        "assets/images/study_1.jpg",
        "assets/images/study_2.jpg",
        "assets/images/study_3.jpg",
        "assets/images/study_4.jpg",
        "assets/images/study_5.jpg",
        "assets/images/study_6.jpg",
        "assets/images/study_7.jpg",
      ]),
  Product(
      id: 'p2',
      productTitle: 'App Development for beginners',
      feePerHour: 30,
      thumbNail: 'assets/images/study_2.jpg',
      address: '240 Sullivan St',
      km: 23.5,
      locationCoordinates: LatLng(40.751908, -73.989804),
      countViews: 23456,
      rating: 3.5,
      imagesList: [
        "assets/images/study_1.jpg",
        "assets/images/study_2.jpg",
        "assets/images/study_3.jpg",
        "assets/images/study_4.jpg",
        "assets/images/study_5.jpg",
        "assets/images/study_6.jpg",
        "assets/images/study_7.jpg",
      ]),
  Product(
      id: 'p3',
      productTitle: 'Health Training for beginners',
      feePerHour: 35,
      thumbNail: 'assets/images/study_3.jpg',
      address: '214 E 10th St',
      km: 13.5,
      locationCoordinates: LatLng(40.751908, -73.989804),
      countViews: 456789,
      rating: 4.0,
      imagesList: [
        "assets/images/study_1.jpg",
        "assets/images/study_2.jpg",
        "assets/images/study_3.jpg",
        "assets/images/study_4.jpg",
        "assets/images/study_5.jpg",
        "assets/images/study_6.jpg",
        "assets/images/study_7.jpg",
      ]),
  Product(
      id: 'p4',
      productTitle: 'Training for beginners',
      feePerHour: 35,
      thumbNail: 'assets/images/study_4.jpg',
      address: '214 E 10th St',
      km: 13.5,
      locationCoordinates: LatLng(40.751908, -73.989804),
      countViews: 456789,
      rating: 4.0,
      imagesList: [
        "assets/images/study_1.jpg",
        "assets/images/study_2.jpg",
        "assets/images/study_3.jpg",
        "assets/images/study_4.jpg",
        "assets/images/study_5.jpg",
        "assets/images/study_6.jpg",
        "assets/images/study_7.jpg",
      ]),
];


