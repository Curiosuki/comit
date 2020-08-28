import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/orders.dart';
import 'package:intl/intl.dart';

class OrderWidget extends StatelessWidget {
  final OrderItem order;

  OrderWidget(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          ExpansionTile(
            title: Text('${order.amount}원'),
            subtitle:
                Text(DateFormat('yyyy/MM/dd/hh:mm').format(order.dateTime)),
            children: [ListView.builder(
              shrinkWrap: true,
                itemCount: order.books.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: Image.network(order.books[i].imgUrl),
                  title: Text('${order.books[i].title}'),
                  subtitle: Text('${order.books[i].price} x ${order.books[i].quantity}권 = ${order.books[i].price*order.books[i].quantity}'),
                ))],
          )
        ],
      ),
    );
  }
}
