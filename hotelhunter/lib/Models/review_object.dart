
import 'package:flutter/material.dart';
import 'user_object.dart';
import 'appConstants.dart';

class Review {

  Contact contact;
  String text;
  double rating;
  DateTime dateTime;

  Review();

  void createReview(Contact contact, String text, double rating, DateTime dateTime){

    this.contact = contact;
    this.text = text;
    this.rating = rating;
    this.dateTime = dateTime;
  }

}
