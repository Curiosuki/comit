import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_tts_improved/flutter_tts_improved.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:hijackupgrade/Models/video_product_model.dart';
import 'package:hijackupgrade/Models/voca_json.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:hijackupgrade/Widgets/i_highlight_textediting_cotroller.dart';
import 'package:translator/translator.dart';
import 'lecture_screen.dart';

class AnalyzerScreen extends StatefulWidget {
  @override
  _AnalyzerScreenState createState() => _AnalyzerScreenState();

  final String query;

  const AnalyzerScreen({Key key, this.query}) : super(key: key);
}

class _AnalyzerScreenState extends State<AnalyzerScreen> {
  get query => widget.query;
  static RegExp regExp = new RegExp(
      r"(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!\:)\s+|\p{Cc}+|\p{Cf}+");
  static List sentences = List<String>();

  FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    sentences = query.split(regExp);
    textController.text = query;
  }

  // 하이라이트 패키지
  final Map<String, HighlightedWord> _highlights ={
    'which' : HighlightedWord(textStyle: TextStyle(color: Color(0xffEC5758))),
    'that' : HighlightedWord(textStyle: TextStyle(color: Color(0xffEC5758))),


  };

  // 믹스형이 준거 TTS
  var textController = HighlightTextEditingController();
  FlutterTtsImproved tts = FlutterTtsImproved();
  bool ttsInProgress = false;
  bool isTranslated = false;

  Future stopReading() async {
    await tts.stop();
    textController.startIdx = null;
    textController.endIdx = null;
    setState(() {
      ttsInProgress = false;
    });
  }

  Future readText() async {
    await tts.stop();
    await tts.setLanguage("en-US");
    await tts.setSpeechRate(1.6);
    await tts.setVolume(1.0);
    await tts.setPitch(1.0);

    tts.setProgressHandler((String fullPhrase, int wordOffset,
        int endOfWordOffset, String currentWord) {
      setState(() {
        print("$currentWord $wordOffset $endOfWordOffset");
        textController.startIdx = wordOffset;
        textController.endIdx = endOfWordOffset;
      });
    });

    tts.setCompletionHandler(() {
      textController.startIdx = null;
      textController.endIdx = null;
      setState(() {
        ttsInProgress = false;
      });
    });

    setState(() {
      ttsInProgress = true;
    });
    await tts.speak(textController.text);
  }

  GoogleTranslator translator = GoogleTranslator();

  translate() async {
   await translator.translate(textController.text, to: 'ko').then((output) {
      setState(() {
        isTranslated = true;
        textController.text = output;
      });
    });
  }
  tranlateK() {
      setState(() {
        isTranslated = false;
        textController.text = query;

      });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            title: Text('영어지문별 자기주도학습'),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: mainColor,
              tabs: [
                Tab(icon: Text('전체지문', style: ITextStyle.body,)),
                Tab(icon: Text('분석노트', style: ITextStyle.body,)),
                Tab(icon: Text('예상문제', style: ITextStyle.body,)),
                Tab(icon: Text('강의보기', style: ITextStyle.body,)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 8,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: mainColor)
                        ),
                        child: TextField(
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                          },
                          style: TextStyle(height: 2),
                          controller: textController,
                          showCursor: false,
                          maxLines: null,
                          cursorColor: mainColor,
                          textAlign: TextAlign.justify,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    iHeight16,
                    Container(
                      color: mainColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            color: Colors.white,
                            shape: CircleBorder(),
                            onPressed: () async {
                              if (ttsInProgress) {
                                await stopReading();
                              } else {
                                await readText();
                              }
                            },
                            child: ttsInProgress
                                ? Icon(
                                    Icons.play_arrow,
                                    color: mainColor,
                                  )
                                : Icon(
                                    Icons.pause,
                                    color: mainColor,
                                  ),
                          ),
                          FlatButton(
                            color: Colors.white,
                            shape: CircleBorder(),
                            onPressed: () async {
                              if (isTranslated == false) {
                                await translate();
                              } else {
                                await tranlateK();
                              }
                            },
                            child: isTranslated
                                ? Icon(
                              Icons.arrow_back,
                              color: mainColor,
                            )
                                : Icon(
                              Icons.translate,
                              color: mainColor,
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Card(
                          color: mainColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '해당 지문은 총 ${sentences.length - 1}개의 문장으로 구성되어 있습니다.',
                              textAlign: TextAlign.center,
                              style: ITextStyle.textSectionWhite,
                            ),
                          )),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: sentences.length - 1,
                          itemBuilder: (context, index) {
                            var sentence = sentences[index];
                            var words = sentence
                                .split(' ')
                                .map((e) => e.toLowerCase().replaceAll('.', ''))
                                .toSet()
                                .toList();

                            // 단어 매칭
                            List<String> matchedWords = [];
                            var voca = jsonDecode(vocaJson);

                            for (var word in words) {
                              if (voca.containsKey(word.toLowerCase())) {
                                matchedWords.add('$word : ${voca["$word"]}');
                              }
                            }

                            // 문법 매칭
                            List<String> matchedGrammars = [];
                            var grammar = jsonDecode(grammarJson);

                            for (var word in words) {
                              if (grammar.containsKey(word.toLowerCase())) {
                                matchedGrammars
                                    .add('$word : ${grammar["$word"]}');
                              }
                            }
                            // TTS
                            speak() async {
                              await flutterTts.setLanguage("en-Us");
                              await flutterTts.setPitch(1);
                              await flutterTts.speak(sentences[index]);
                            }

                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    speak();
                                  },
                                  child: Card(
                                      elevation: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextHighlight(
                                          text: sentences[index],
                                          words: _highlights,
                                          textStyle: TextStyle(fontSize: 16, color: Colors.black),
                                        ),
                                      )),
                                ),
                                Card(
                                  elevation: 0,
                                  child: Container(
                                    color: mainColor.withOpacity(0.2),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: matchedWords.length,
                                            itemBuilder: (context, index) =>
                                                Text('${matchedWords[index]}')),
                                        ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: matchedGrammars.length,
                                            itemBuilder: (context, index) => Text(
                                                '${matchedGrammars[index]}')),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Text('문제');
                  }),
              ListView.builder(
                  itemCount: videoLists.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () {
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.landscapeLeft]);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LectureScreen(
                                      query: query,
                                      videoUrl: videoLists[index].videoUrl,
                                      tName: videoLists[index].tName,
                                      tImage: videoLists[index].tImage,
                                    )),
                          );
                        },
                        leading: Image.network(
                          '${videoLists[index].tImage}',
                          fit: BoxFit.cover,
                        ),
                        title: Text('${videoLists[index].tName} 선생님'),
                        subtitle: Text(
                            '| 시간: 10:15 | 금액: ${videoLists[index].price}원 | '),
                        trailing: Icon(
                          Icons.play_circle_filled,
                          color: mainColor,
                          size: 32,
                        ),
                      ),
                    );
                  }),
            ],
          )),
    );
  }
}
