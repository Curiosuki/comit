import 'package:flutter/material.dart';
import 'package:hijackupgrade/Providers/cart.dart' show Cart ;
import 'package:hijackupgrade/Providers/orders.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('장바구니'),
      ),
      body: Column(
        children: [
          Card(
            elevation: 2,
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '전체금액',
                    style: ITextStyle.subTitle,
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '${cart.totalAmount}원',
                      style: ITextStyle.subTitleWhite,
                    ),
                    backgroundColor: mainColor,
                  ),
                ],
              ),
            ),
          ),
          iHeight16,
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length, itemBuilder: (ctx, i) => CartItemWidget(
              id: cart.items.values.toList()[i].id,
              bookID: cart.items.keys.toList()[i],
              imgUrl: cart.items.values.toList()[i].imgUrl,
              title: cart.items.values.toList()[i].title,
              price: cart.items.values.toList()[i].price,
              quantity: cart.items.values.toList()[i].quantity
            )),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: FlatButton(
              color: mainColor,
              onPressed: () {
                Provider.of<Orders>(context, listen: false).addOrder(cart.items.values.toList(), cart.totalAmount);
                cart.clear();
                Navigator.pushNamed(context, '/ordersScreen');
              },
              child: Text('바로 주문하기', style: ITextStyle.subTitleWhite,),
              textColor: mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
