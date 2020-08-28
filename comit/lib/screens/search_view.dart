import 'dart:ui';
import 'package:comit/components/button/avatar_button.dart';
import 'package:comit/components/button/heart_button.dart';
import 'package:comit/models/datas/data_user.dart';
import 'package:comit/models/model_product.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

void main() => runApp(SearchView());

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: mainColor,
            title: const Text('Find Your Class'),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(250, 250, 250, 250),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: VerticalTabs(
                    indicatorColor: mainColor,
                    indicatorWidth: 3,
                    tabsElevation: 0,
                    selectedTabBackgroundColor: mainColor.withOpacity(0.2),
                    tabsWidth: 150,
                    direction: TextDirection.ltr,
                    contentScrollAxis: Axis.vertical,
                    changePageDuration: Duration(milliseconds: 500),
                    tabs: <Tab>[
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Business', style: ISetText.body,),
                      ),),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Marketing', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Development', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('IT & Software', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Office Productivity', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Personal Developement', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Design & Drawing', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Music', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Health & Fitness', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Sports & Activity', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Life style & Cooking', style: ISetText.body,),
                      )),
                      Tab(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('Photography', style: ISetText.body,),
                      )),
                    ],
                    contents: <Widget>[
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: black_50.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                      Container(
                        //color: Colors.black12,
                          child: ListView.builder(
                              itemCount: productLists.length-1,
                              itemExtent: 350,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, '/detailview'),
                                  child: Container(
                                    decoration: iBoxDecoration,
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          child: Container(
                                            color: mainColor,
                                            height: 350,
                                            width: double.infinity,
                                            child: Image.asset(productLists[index].thumbNail, fit: BoxFit.cover,  color: mainColor.withOpacity(0.2),
                                              colorBlendMode: BlendMode.srcATop,),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius: iBorderRadiusRound,
                                            child: BackdropFilter(
                                              filter: new ImageFilter.blur(
                                                  sigmaX: 10.0, sigmaY: 10.0),
                                              child: Container(
                                                height: 100,
                                                padding: EdgeInsets.all(8.0),
                                                color: mainColor.withOpacity(0.5),
                                                child: Center(
                                                  child: Text(
                                                    productLists[index].productTitle,
                                                    style: ISetText.bodyWhite,
                                                    //overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 18,
                                          right:12,
                                          //right: 12,
                                          child: Text(
                                            "\$ ${productLists[index].feePerHour}",
                                            style: TextStyle(
                                              color: black_50,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  blurRadius: 10.0,
                                                  color: mainFontColor,
                                                  offset: Offset(5.0, 5.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 12,
                                          left: 12,
                                          child: HeartButton(),
                                        ),
                                        Positioned(
                                          bottom: 88,
                                          left: 20,
                                          child: Row(
                                            children: <Widget>[
                                              AvatarButton(radius: 22.0, avatarUrl: sellerInfo[index].userAvatarUrl,),
                                              iWidthMedium,
                                              ClipRRect(
                                                borderRadius: iBorderRadiusRound,
                                                child: BackdropFilter(
                                                  filter: new ImageFilter.blur(
                                                      sigmaX: 10.0, sigmaY: 10.0),
                                                  child: Container(
                                                    padding: EdgeInsets.all(8.0),
                                                    color: Colors.white.withOpacity(0.5),
                                                    child: Text(
                                                      sellerInfo[index].userName,
                                                      style: ISetText.captionWhite,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),














                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }


}
