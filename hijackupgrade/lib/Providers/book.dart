import 'package:flutter/foundation.dart';

class Book with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final int price;
  final String imgUrl;
  bool isFavorite;

  Book({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imgUrl,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus (){
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
