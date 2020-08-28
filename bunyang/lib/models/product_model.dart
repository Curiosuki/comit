import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Product {
  String id;
  String categoryName;           // 카테고리명
  // 메인베너 공통 부분
  String productName;            // 상품명
  double pricePerHour;           // 시간당 가격
  String thumbNail;              // 썸네일
  int totalNumberOfParticipants; // 전체 수업신청자수
  bool isFavorite;               // 하트 좋아요

  // 위치관련 정보
  String address;                // 주소
  double km;                     // km
  LatLng locationCoordinates;    // 위도 경도

  // Tab1
  String tutorComments;          // 버블멘트

  DateTime startingDate;         // 시작일
  DateTime endDate;              // 마감일

  int minNumberOfParticipants;   // 최소인원
  int maxNumberOfParticipants;   // 최대인원

  String videoUrl;               // 비디오 url
  List imagesList;               // horizontal image list
  String whoIsTutor;             // 선생님 소개
  String whoIsEligible;          // 대상
  String classIntroduction;      // 수업소개

  // Tab2
  List curriculum;               // 커리큘럼

  // Tab4
  double rating;                 // 리뷰
  int countViews;

  Product({
    @required this.id,
    this.categoryName,
    @required this.productName,
    this.pricePerHour,
    @required this.thumbNail,
    this.totalNumberOfParticipants,
    this.isFavorite = false,
    this.address,
    this.km,
    this.locationCoordinates,
    this.tutorComments,
    this.startingDate,
    this.endDate,
    this.minNumberOfParticipants,
    this.maxNumberOfParticipants,
    this.videoUrl,
    this.imagesList,
    this.whoIsTutor,
    this.whoIsEligible,
    this.classIntroduction,
    this.curriculum,
    this.rating,
    this.countViews}); // 조회수
}



List<Product> productLists = [

  Product(
    id: 'p1',
    productName: 'Web Development for beginners',
    pricePerHour: 20,
    thumbNail: 'assets/images/study_1.jpg',
    address: '463 7th Ave',
    km: 3.5,
    locationCoordinates: LatLng(40.745803, -73.988213),
    countViews: 123456,
    rating: 3.5,
  ),

  Product(
    id: 'p2',
    productName: 'App Development for beginners',
    pricePerHour: 30,
    thumbNail: 'assets/images/study_2.jpg',
    address: '240 Sullivan St',
    km: 23.5,
    locationCoordinates: LatLng(40.751908, -73.989804),
    countViews: 23456,
    rating: 3.5,
  ),

  Product(
    id: 'p3',
    productName: 'Health Training for beginners',
    pricePerHour: 35,
    thumbNail: 'assets/images/study_3.jpg',
    address: '214 E 10th St',
    km: 13.5,
    locationCoordinates: LatLng(40.751908, -73.989804),
    countViews: 456789,
    rating: 4.0,
  ),

  Product(
    id: 'p4',
    productName: 'Training for beginners',
    pricePerHour: 35,
    thumbNail: 'assets/images/study_4.jpg',
    address: '214 E 10th St',
    km: 13.5,
    locationCoordinates: LatLng(40.751908, -73.989804),
    countViews: 456789,
    rating: 4.0,
  ),

];