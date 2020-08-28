import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/book.dart';
import 'package:hijackupgrade/Providers/cart.dart';
import 'package:hijackupgrade/Screens/Book/book_detail_screen.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:provider/provider.dart';

class BookItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<Book>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);

    return ClipRRect(
      borderRadius: iBorderRadius,
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/bookDetailScreen',
                arguments: book.id);
          },
          child: Image.network(
            book.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Consumer<Book>(
              builder: (ctx, book, _) => CircleAvatar(
                backgroundColor: mainColor.withOpacity(0.1),
                child: IconButton(
                    onPressed: () {
                      book.toggleFavoriteStatus();
                    },
                    icon: Icon(
                      book.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Color(0xffEC5758),
                    )),
              ),
            ),

          ],
        ),
        footer: GridTileBar(
          trailing: InkWell(
            onTap: (){
              cart.addItem(book.id, book.price, book.title, book.imgUrl);
            },
            child: Card(
                elevation: 3,
                color: Color(0xffEC5758),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('선택+', style: TextStyle(color: Colors.white),),
                )),
          ),
          backgroundColor: mainColor.withOpacity(0.8),
          title: Text(
            book.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
