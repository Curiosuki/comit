import 'package:flutter/material.dart';
import 'package:hotelhunter/Models/messaging_object.dart';
import 'package:hotelhunter/Models/posting_object.dart';

import 'appConstants.dart';
import 'review_object.dart';

class Contact {
  String firstName;
  String lastName;
  AssetImage displayImage;
  String imagePath;

  Contact({this.firstName = "", this.lastName = "", this.imagePath = ""}) {
    this.displayImage = AssetImage(this.imagePath);
  }

  String getFullName(){
    return this.firstName + " " + this.lastName;
  }

  User createUserFromContact() {
    return User(
      firstName: this.firstName,
      lastName: this.lastName,
      imagePath: this.imagePath
    );
  }
}

class User extends Contact {
  String email;
  String bio;
  String city;
  String country;
  bool isHost;
  bool isCurrentlyHosting;

  List<Booking> bookings;
  List<Review> reviews;
  List<Conversation> conversation;
  List<Posting> savedPostings;

  User({String firstName = "",
    String lastName = "",
    String imagePath = "",
    this.email = "",
    this.bio = "",
    this.city = "",
    this.country = ""})
      : super(firstName: firstName, lastName: lastName, imagePath: imagePath) {
    this.isHost = false;
    this.isCurrentlyHosting = false;
    this.bookings =[];
    this.reviews = [];
    this.conversation = [];
    this.savedPostings = [];
  }

  void changeCurrentlyHosting(bool isHosting) {
    this.isCurrentlyHosting = isHosting;
  }

  void becomeHost() {
    this.isHost = true;
    this.changeCurrentlyHosting(true);
  }

  Contact createContactFromUser(){
    return Contact(
      firstName: this.firstName,
      lastName: this.lastName,
      imagePath: this.imagePath
    );
  }

  void makeNewBooking(Booking booking){
    this.bookings.add(booking);
  }

  void addSavedPosting(Posting posting){
    this.savedPostings.add(posting);
  }

  void remvoeSavedPosting(Posting posting){
    for(int i = 0; i < this.savedPostings.length; i++){
      this.savedPostings.removeAt(i);
    }
  }

  double getCurrentRating(){
    if(this.reviews.length == 0){ return 4; }
    double rating = 0;
    this.reviews.forEach((review) {
      rating += review.rating;
    });

    rating /= this.reviews.length;
    return rating;
  }

  void postNewReview(String text, double rating,) {
    Review newReview = Review();
    newReview.createReview(
        AppConstants.currenUser.createContactFromUser(), text, rating,
        DateTime.now());
    this.reviews.add(newReview);
  }

}


