import 'package:flutter/material.dart';


// (1) 메인 색상 설정
final Color mainFontColor = Colors.blueAccent;
final Color mainColor = Colors.blueAccent;

// (2) 보조 색상 설정 (폰트포함)
final Color black_50 = Color(0xFFFAFAFA);
final Color black_100 = Color(0xFFF5F5F5);
final Color black_200 = Color(0xFFEEEEEE);
final Color black_300 = Color(0xFFE0E0E0);
final Color black_400 = Color(0xFFBDBDBD);
final Color black_500 = Color(0xFF9E9E9E);
final Color black_600 = Color(0xFF757575);
final Color black_700 = Color(0xFF616161);
final Color black_800 = Color(0xFF424242);
final Color black_900 = Color(0xFF212121);

// (3) 뱃지색상 설정
final Color badgeRed = Color(0xFFC62828);
final Color badgeBlue = Color(0xFF1565C0);
final Color badgeGreen = Color(0xFF00695C);
final Color badgeYellow = Color(0xFFFf8F00);


final iLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [
      0.1,
      0.4,
      0.6,
      0.9
    ],
    colors: [
      Colors.deepPurple,
      Colors.deepPurple,
      Colors.deepPurpleAccent,
      Colors.deepPurpleAccent,
    ]);
