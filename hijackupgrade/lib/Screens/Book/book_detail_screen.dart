import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/books.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:provider/provider.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productID =
        ModalRoute.of(context).settings.arguments as String; // is ID

    final loadedBook =
        Provider.of<Books>(context, listen: false).findById(productID);

    return Scaffold(
      appBar: AppBar(
        title: Text('${loadedBook.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                loadedBook.imgUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
            iHeight16,
            Text(
              '가격: ${loadedBook.price}원',
              style: ITextStyle.title,
            ),
            iHeight16,
            Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                child: Text(
                  '${loadedBook.description}',
                )),
          ],
        ),
      ),
    );
  }
}
