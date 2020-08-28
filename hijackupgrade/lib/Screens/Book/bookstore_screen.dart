import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/books.dart';
import 'package:hijackupgrade/Providers/cart.dart';
import 'package:hijackupgrade/Widgets/badge.dart';
import 'package:hijackupgrade/Widgets/book_item.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorites, All }

class BookStoreScreen extends StatefulWidget {
  @override
  _BookStoreScreenState createState() => _BookStoreScreenState();
}

class _BookStoreScreenState extends State<BookStoreScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<Books>(context);
    final books =
        _showOnlyFavorites ? booksData.favoriteItems : booksData.items;

    return Scaffold(
      floatingActionButton: Consumer<Cart>(
        builder: (_, cart, ch) => Badge(
          value: cart.itemCount.toString(),
          child: ch,
        ),
        child: FloatingActionButton.extended(
          label: Text('장바구니'),
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.pushNamed(context, '/cartScreen');
          },
        ),
      ),
        appBar: AppBar(
          title: Text('하이잭 북스토어'),
          actions: [
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
              icon: Icon(Icons.filter_list),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text('찜보기'),
                  value: FilterOptions.Favorites,
                ),
                PopupMenuItem(
                  child: Text('전체보기'),
                  value: FilterOptions.All,
                )
              ],
            ),
          ],
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: books.length,
          itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: books[i],
            child: BookItem(),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ));
  }
}
