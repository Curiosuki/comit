import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final int price;
  final String imgUrl;

  CartItem(
      {@required this.id,
      @required this.title,
      @required this.quantity,
      @required this.price,
      @required this.imgUrl});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  int get totalAmount {
    int total = 0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(String bookID, int price, String title, String imgUrl) {
    if (_items.containsKey(bookID)) {
      _items.update(
          bookID,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              title: existingCartItem.title,
              price: existingCartItem.price,
              quantity: existingCartItem.quantity + 1,
              imgUrl: existingCartItem.imgUrl));
    } else {
      _items.putIfAbsent(
          bookID,
          () => CartItem(
                id: DateTime.now().toString(),
                title: title,
                price: price,
                quantity: 1,
                imgUrl: imgUrl,
              ));
    }
    notifyListeners();
  }

  void removeItem(String bookID){
    _items.remove(bookID);
    notifyListeners();
  }

  void clear(){
    _items = {};
    notifyListeners();
  }
}
