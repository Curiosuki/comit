import 'package:flutter/material.dart';
import 'package:testmaker/models/vocaJson.dart';


enum DisplayType {
  Kor,
  Eng,
  info,
}

class DisplayString {
  DisplayType asType;
  String text;

  DisplayString(this.asType, this.text);
}



class Repository with ChangeNotifier {

// 텍스트박스에 있는 문장을 구두점에 따라 나누기
  var textboxes = List<DisplayString>();

  List<String> splitSentences(String str) {
    var ret = List<String>();

    String strToAdd = '';
    str.runes.forEach((rune) {
      var char = new String.fromCharCode(rune).replaceAll(',', ',/ ');

      if ((char == '!') | (char == '?') | (char == '!') | (char == '.')) {
        if (strToAdd.isNotEmpty) {
          strToAdd += char;
          strToAdd = strToAdd.trim();
          ret.add(strToAdd);
          strToAdd = '';
        }
      } else {
        strToAdd += char;
      }
    });
    return ret;
  }

  // 텍스트박스에 있는 문장을 json에 따라 분석

  List<String> analyzeWords(String str) {

    prepareAnalysis();
    var ret = List<String>();

    var words = str.replaceAll(',', ' ').split(' ');

    for (var word in words) {
      word = word.toLowerCase();

      if (dict.keys.contains(word) == true) {
        var meaning = dict[word]['meaning'];
        var synonym = dict[word]['synonym'];
        var grammar = dict[word]['grammar'];

        if(synonym == null || grammar == null) {
          ret.add('· $word $meaning');
        } else {
          ret.add('· $word $meaning \n[동의어] $synonym   [문법] $grammar');
        }


      }
    }

    return ret;
  }

  // 텍스트박스에 있는 문장을 json에 따라 분석

  addEntries(String en, String kr) {
    var enArr = splitSentences(en);
    var krArr = splitSentences(kr);

    if (enArr.length == krArr.length) {
      for (var i = 0; i < enArr.length; i++) {
        textboxes.add(DisplayString(DisplayType.Eng, enArr[i]));
        textboxes.add(DisplayString(DisplayType.Kor, krArr[i]));

        var grammarInfoArr = analyzeWords(enArr[i]);
        for (var info in grammarInfoArr) {
          textboxes.add(DisplayString(DisplayType.info, info));
        }

      }

      notifyListeners();
    }
  }
}
