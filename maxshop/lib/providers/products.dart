import 'package:flutter/cupertino.dart';
import 'package:maxshop/models/product.dart';

class Products with ChangeNotifier {
  // basic dummy product
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'it is good product',
        price: 29.99,
        imgUrl:
            'https://img1.g-star.com/product/c_fill,f_auto,h_630,q_80/v1586456245/D07205-124-110-Z04/g-star-raw-basic-t-shirt-2-pack-white-flat-front.jpg'),
    Product(
        id: 'p2',
        title: 'blue Shirt',
        description: 'it is good product',
        price: 29.99,
        imgUrl:
        'https://img1.g-star.com/product/c_fill,f_auto,h_630,q_80/v1586456245/D07205-124-110-Z04/g-star-raw-basic-t-shirt-2-pack-white-flat-front.jpg'),
    Product(
        id: 'p3',
        title: 'purple Shirt',
        description: 'it is good product',
        price: 29.99,
        imgUrl:
        'https://img1.g-star.com/product/c_fill,f_auto,h_630,q_80/v1586456245/D07205-124-110-Z04/g-star-raw-basic-t-shirt-2-pack-white-flat-front.jpg'),
  ];

  List<Product> get items => [..._items];

  // 상태변경 메서드
  void addProduct() {
    //item.add(value);

    // 리스너들한테 변경을 알려줘
    notifyListeners();
  }
}
