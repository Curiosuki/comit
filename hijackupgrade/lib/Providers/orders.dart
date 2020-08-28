import 'package:flutter/foundation.dart';
import 'package:hijackupgrade/Providers/cart.dart';

class OrderItem {
  final String id;
  final int amount;
  final List<CartItem> books;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.books,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders =[];
  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartBooks, int total){
    _orders.insert(0, OrderItem(id: DateTime.now().toString(), amount: total, books: cartBooks, dateTime: DateTime.now()));
    notifyListeners();
  }

}
