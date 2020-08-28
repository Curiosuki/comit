import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Providers/orders.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //color: black_100.withOpacity(.8),
          ),
          child: InkWell(
            borderRadius: iBorderRadius,
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.chevronLeft,
                color: mainColor,
                size: 16,
              ),
            ),
          ),
        ),
        title: Text('구매목록'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (ctx, i) => OrderWidget(orderData.orders[i])),
    );
  }
}
