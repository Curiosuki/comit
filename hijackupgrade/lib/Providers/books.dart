import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/book.dart';
import 'package:hijackupgrade/Themes/i_set_string.dart';

class Books with ChangeNotifier {
  List<Book> _items = [
    Book(
      id: 'p1',
      title: '하이잭수능문법',
      description: '$dummyText',
      price: 28000,
      imgUrl:
          'https://mblogthumb-phinf.pstatic.net/MjAxNzAxMThfNyAg/MDAxNDg0NzE3MjUwODEw.6IEVgHinHkhtDcMvC5L6jW6I-2gVRJXZqcI3JKg1lekg.uBjjxbZ7JT6SBkpbE62ws_ecQdzIXh6K_yKU5PIbIyIg.PNG.expert120/RB_white.png?type=w2',
    ),
    Book(
      id: 'p2',
      title: '하이잭수능독해',
      description: '$dummyText',
      price: 28000,
      imgUrl:
          'https://mblogthumb-phinf.pstatic.net/MjAxNzAxMThfMzQg/MDAxNDg0NzE3MzkxMzA3.9e9sFeqbL97Hzw175g0nPG5eGIGo1-BsKOXOYcFce28g.Je92bSPbABX3FJpzxDf9Qewi4RA3jSUh-PUfGbEX0Ysg.PNG.expert120/blog.png?type=w2',
    ),
    Book(
      id: 'p3',
      title: '하이잭수능보카',
      description: '$dummyText',
      price: 28000,
      imgUrl:
          'https://mblogthumb-phinf.pstatic.net/MjAxNzAxMThfNTQg/MDAxNDg0NzE3NTE2MDM1.DWdOJ8eEHMxe6a2s4Y3u89sJT4dKff2G5vKVbRQReZog.mH0L-zI8avJL-ia6yi2GNhmqCj8ENc21Ikt3RFMYoo8g.PNG.expert120/blog.png?type=w2',
    ),
    Book(
      id: 'p4',
      title: '하이잭수능듣기',
      description: '$dummyText',
      price: 28000,
      imgUrl:
          'https://mblogthumb-phinf.pstatic.net/MjAxNzAyMDJfMjI3/MDAxNDg2MDA2NDIxMDc5.2DR-WIQTrfqXoFA0tAo52u6VF42-TIikNP7p_mxMj8wg.vi0E7IbkmzOTfCOl7WFxJ613tkXjVTIE2OIBCe5Jxvsg.JPEG.expert120/2017_%EF%BF%BD%EB%8B%94%EF%BF%BD%EB%92%AB%EF%BF%BD%EB%93%85%E5%AA%9B%EF%BF%BD_%EF%BF%BD%EB%96%86%E8%A3%95%EF%BF%BD.png?type=w2',
    ),
  ];

  List<Book> get items {
    return [..._items];
  }

  List<Book> get favoriteItems {
    return _items.where((book) => book.isFavorite).toList();
  }

  Book findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addBook() {
    //_items.add(value);
    notifyListeners();
  }
}
