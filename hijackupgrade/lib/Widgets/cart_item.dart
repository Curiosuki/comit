import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/cart.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {

  final String id;
  final String bookID;
  final int price;
  final int quantity;
  final String title;
  final String imgUrl;

  CartItemWidget({this.id, this.price, this.quantity, this.title, this.imgUrl, this.bookID});


  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction){
        Provider.of<Cart>(context, listen: false).removeItem(bookID);
      },
      direction: DismissDirection.endToStart,
      key: ValueKey(id),
      background: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 25),
        color: Colors.red,
        child: Icon(Icons.delete_sweep, color: Colors.white,),
      ),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        child: ListTile(
          leading: Image.network(imgUrl),
          title: Text(title),
          subtitle: Text('$price원 x $quantity 권 = 총 ${price * quantity}원'),
          //trailing: Text(''),
        ),
      ),
    );
  }

}
