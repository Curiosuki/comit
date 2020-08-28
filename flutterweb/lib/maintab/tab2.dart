import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_size.dart';
import 'package:flutterweb/theme/i_set_text.dart';


class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Column(
            children: <Widget>[
              iHeightLarge,
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'Our Development Team', style: ISetText.titleWhite),
                  ],
                ),
              ),
              iHeightLarge,

            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Container(
          child: CarouselSlider(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1.0,
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            items: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset('assets/images/coder1.jpg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: new BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black45.withOpacity(0.3),
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'Jame Choi',
                                    style: ISetText.display1White,
                                  ),
                                ),
                                iHeightMedium,
                                Flexible(
                                  child: Text(
                                    'Web / App Developer',
                                    style: ISetText.subTitle.copyWith(color: black_50),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: double.infinity,
                      width: double.infinity,
                      child: Image.asset('assets/images/coder2.jpg',
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: new BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black45.withOpacity(0.3),
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'Saeroi Park',
                                    style: ISetText.display1White,
                                  ),
                                ),
                                iHeightMedium,
                                Flexible(
                                  child: Text(
                                    'Web / App Developer',
                                    style: ISetText.subTitle.copyWith(color: black_50),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.asset('assets/images/coder3.jpg',
                          fit: BoxFit.cover,
                      )),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1.5,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      child: new BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          color: Colors.black45.withOpacity(0.3),
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'Bob Kim',
                                    style: ISetText.display1White,
                                  ),
                                ),
                                iHeightMedium,
                                Flexible(
                                  child: Text(
                                    'Web / App Developer',
                                    style: ISetText.subTitle.copyWith(color: black_50),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
