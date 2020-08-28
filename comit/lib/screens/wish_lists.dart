import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class WishLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Text('Wish Lists'),
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              decoration: iBoxDecoration,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    iHeartFilled,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '4 Classes available',
                        style: ISetText.title,
                      ),
                    ),
                    Text('You can register for 4 classes now', style: ISetText.textSectionGrey,)
                  ],
                ),
              ),
            ),
            iDivider,

          ],
        ),
      ),
    );
  }
}
