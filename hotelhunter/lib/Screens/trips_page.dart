import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';

class TripsPage extends StatefulWidget {
  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          iHeight16,
          Text(
            'Upcoming Trips',
            style: ITextStyle.title,
          ),
          CarouselSlider(
            aspectRatio: 1.0,
            viewportFraction: 16/9,
            items: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/apt1.jpg',
                      fit: BoxFit.cover,
                      color: mainColor.withOpacity(0.3),
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('서울시 강남구', style: ITextStyle.bodyWhite,),
                        iHeight8,
                        Text('홍대 자연채광 좋은 디알 스튜디오', style: ITextStyle.titleWhite,),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StarRating(size: 25, color: Colors.white, borderColor: Colors.white,),
                        RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: '70,000',
                            style: DefaultTextStyle.of(context).style.copyWith(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
                            children: <TextSpan>[
                              TextSpan(text: '원/시간', style: ITextStyle.bodyWhite),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          iHeight16,
          Text(
            'Previous Trips',
            style: ITextStyle.title,
          ),
          CarouselSlider(
            aspectRatio: 1.0,
            viewportFraction: 16/9,
            items: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/apt1.jpg',
                      fit: BoxFit.cover,
                      color: mainColor.withOpacity(0.3),
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('서울시 강남구', style: ITextStyle.bodyWhite,),
                        iHeight8,
                        Text('홍대 자연채광 좋은 디알 스튜디오', style: ITextStyle.titleWhite,),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StarRating(size: 25, color: Colors.white, borderColor: Colors.white,),
                        RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: '70,000',
                            style: DefaultTextStyle.of(context).style.copyWith(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 30),
                            children: <TextSpan>[
                              TextSpan(text: '원/시간', style: ITextStyle.bodyWhite),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          iHeight16,
        ],
      ),
    );
  }
}
