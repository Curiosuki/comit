import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Models/voca_json.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';
import 'package:video_player/video_player.dart';

class LectureScreen extends StatefulWidget {
  @override
  _LectureScreenState createState() => _LectureScreenState();

  final String query;
  final String videoUrl;
  final String tName;
  final String tImage;

  const LectureScreen(
      {Key key, this.query, this.videoUrl, this.tName, this.tImage})
      : super(key: key);
}

class _LectureScreenState extends State<LectureScreen> {
  get query => widget.query;

  get videoUrl => widget.videoUrl;

  get tName => widget.tName;

  get tImage => widget.tImage;

  //
  static RegExp regExp = new RegExp(
      r"(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!\:)\s+|\p{Cc}+|\p{Cf}+");
  static List sentences = List<String>();

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    sentences = query.split(regExp);

    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
    _controller = VideoPlayerController.network(videoUrl);

    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    // 자원을 반환하기 위해 VideoPlayerController를 dispose 시키세요.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          // 만약 VideoPlayerController 초기화가 끝나면, 제공된 데이터를 사용하여
                          // VideoPlayer의 종횡비를 제한하세요.
                          return AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            // 영상을 보여주기 위해 VideoPlayer 위젯을 사용합니다.
                            child: VideoPlayer(_controller),
                          );
                        } else {
                          // 만약 VideoPlayerController가 여전히 초기화 중이라면,
                          // 로딩 스피너를 보여줍니다.
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  color: mainColor,
                  child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage('$tImage', scale: 1.0),
                      ),
                      title: Text(
                        '$tName 선생님',
                        style: ITextStyle.bodyWhite,
                      ),
                      subtitle: Text(
                        '15:39',
                        style: ITextStyle.textSectionWhite,
                      ),
                      trailing: FlatButton(
                          color: Colors.white,
                          shape: new CircleBorder(),
                          onPressed: () {
                            // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이
                            // 보여집니다.
                            setState(() {
                              // 영상이 재생 중이라면, 일시 중지 시킵니다.
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                // 만약 영상이 일시 중지 상태였다면, 재생합니다.
                                _controller.play();
                              }
                            });
                          },
                          child: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: mainColor,
                          ))),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
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

                          return Column(
                            children: [
                              Card(
                                  elevation: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SelectableText(
                                      '${sentences[index]}',
                                      style: ITextStyle.bodyblack
                                          .copyWith(height: 2),
                                    ),
                                  )),
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
          ),
        ],
      ),
    );
  }
}
