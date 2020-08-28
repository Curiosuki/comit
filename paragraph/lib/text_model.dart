import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TextModel {
  String paragraph;
  List<String> sentences;
  List<String> words;
//  String translatedText;

  static RegExp regExp = new RegExp(
      r"(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!\:)\s+|\p{Cc}+|\p{Cf}+");

  GoogleTranslator translator = GoogleTranslator();

  TextModel({@required this.paragraph}) {
    this.sentences = paragraph.split(regExp);
    this.words = this.sentences.map((e) => e.split(' ')).expand((e) => e).toList();
 //   this.translatedText = translator.translate(sentences[index], to: 'ko').toString();

  }

}

var textModelLists = [
  TextModel(
      paragraph:
          'There is a new psychological phenomenon that we are now seeing: “warm weather ambivalence”. This means that, on one hand, the warmth of spring makes us feel better, especially after many months of cold. However, these days many people also report feeling stressed when temperatures rise at the start of spring. This happens because of the helplessness that some of us feel when faced with climate change. Fortunately, according to studies on stress, our eventual response to uncomfortable situations is to deal with the cause. The fact is that the unpleasant stress caused by warmer weather could motivate us to take action — for example, by reducing our personal carbon footprint. What this shows is how stress can help us avoid an approaching environmental disaster.'),
  TextModel(
      paragraph:
          'A psychologist named Mihaly Csikszentmihalyi described a mental condition during which people concentrate deeply and experience a high level of satisfaction. He called this a flow state. In order to reach a flow state, the most important requirement is that the activity has to be challenging and require skills. Deep concentration is also needed. A flow state can occur during a wide variety of activities, from reading a book to climbing a mountain.  However, there are some activities that don′t meet the requirements. On the other hand, watching TV may require concentration, but it doesn′t involve skills or a challenge. Therefore, a flow state cannot occur.'),
  TextModel(
      paragraph:
          'In the United States, the day after Thanksgiving, traditionally known as Black Friday, is the busiest shopping day of the year. But now, many people are celebrating Buy Nothing Day instead. The purpose of this newly created holiday is to increase awareness of consumer spending habits. Participants celebrate by boycotting the Black Friday shopping madness. Buy Nothing Day was started in Canada in 1992. The holiday has even been adopted by Adbusters magazine, which greatly increased its popularity. It is currently held in more than 65 countries. However, opponents have now started another holiday to protest Buy Nothing Day. Called Buy Something Day, it was created by people who worry that a lack of shoppers will slow economic growth.')
];
