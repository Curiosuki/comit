import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceLocation {

  String placeName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoordinates;

  PlaceLocation(
      {this.placeName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoordinates,
      });

  final List<PlaceLocation> productPlaces =[
    PlaceLocation(
      placeName: 'StarBucks',
      address: '18 W 29th St',
      description: 'Coffee bar chain offering house',
      locationCoordinates: LatLng(40.745803, -73988213),
      thumbNail: 'assets/imgages/study_1'
    )
  ];

}