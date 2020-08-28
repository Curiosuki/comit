import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';

var vocaJson = '''
  { 
  "psychological" : "a. 심리적인", 
  "weather" : "n. 날씨", 
  "new" : "a. 새로운", 
  "many" : "a. 많은", 
  "ambivalence" : "n. 양면가치",
  "trait" : "n. 형질", 
  "adaptive" : "a. 적응하는", 
  "maintain" : "v. 유지하다", 
  "precisely" : "adv. 정확히"
  }
  ''';

var grammarJson = '''
  {
  "another" : "another 단수N (+단수V)",
  "other" : "other 복수Ns (+단수V)", 
  "where" : "where s + v + o/c (완벽한절)",
  "because" : "because s + v (접속사) / because of N (전치사)"
  }
  ''';

var conjunctionJson = '''
  {
  "however" : "[역접] however, but, yet",
  "For example" : "[예시] for example, for instance ", 
  "in other words" : "[재진술] "
  }
  ''';

Map<String, HighlightedWord> highlitedWords = {
  "However": HighlightedWord(
    onTap: () {
      print("Flutter");
    },
    textStyle: TextStyle(backgroundColor: mainColor),
  ),
  "Therefore": HighlightedWord(
    onTap: () {
      print("open-source");
    },
    textStyle: TextStyle(backgroundColor: Colors.greenAccent),
  ),
  "But": HighlightedWord(
    onTap: () {
      print("Android");
    },
    textStyle: TextStyle(backgroundColor: Colors.blueAccent),
  ),
  "/": HighlightedWord(
    onTap: () {
      print("Android");
    },
    textStyle: TextStyle(color: Colors.blueAccent, fontSize: 20),
  ),
  "which": HighlightedWord(
    onTap: () {
      print("Android");
    },
    textStyle: TextStyle(color: Colors.redAccent, decoration: TextDecoration.underline),
  ),
  "that": HighlightedWord(
    onTap: () {
      print("Android");
    },
    textStyle: TextStyle(color:  mainColor, decoration: TextDecoration.underline),
  ),
  "when": HighlightedWord(
    onTap: () {
      print("Android");
    },
    textStyle: TextStyle(backgroundColor: Colors.black12),
  ),
};
