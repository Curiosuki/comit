import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/models/model_user.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class ChatLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Text('Chatting Lists'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      AvatarButton(radius: 30.0, avatarUrl: sellerInfo[0].userAvatarUrl,),
                      Text(sellerInfo[0].userName)
                    ],
                  ),
                ),
                iWidthLarge,
                Flexible(
                  child: Container(
                   // padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(productLists[1].productTitle, style: ISetText.subTitle, overflow: TextOverflow.ellipsis,),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Hello~', style: ISetText.textSectionGrey,),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('2020-02-12', style: ISetText.captionGrey,),
                ),
              ],
            ),
            iDivider,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      AvatarButton(radius: 30.0, avatarUrl: sellerInfo[1].userAvatarUrl,),
                      Text(sellerInfo[1].userName)
                    ],
                  ),
                ),
                iWidthLarge,
                Flexible(
                  child: Container(
                    // padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(productLists[1].productTitle, style: ISetText.subTitle, overflow: TextOverflow.ellipsis,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Hello~', style: ISetText.textSectionGrey,),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('2020-02-12', style: ISetText.captionGrey,),
                ),
              ],
            ),
            iDivider,

          ],
        ),
      ),
    );
  }
}
