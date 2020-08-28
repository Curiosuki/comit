import 'package:flutter/material.dart';
import 'package:paragraph/sentence_screen.dart';
import 'package:paragraph/text_model.dart';
import 'package:provider/provider.dart';

class ParagraphScreen extends StatefulWidget {
  @override
  _ParagraphScreenState createState() => _ParagraphScreenState();
}

class _ParagraphScreenState extends State<ParagraphScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paragraph Screen'),
      ),
      body: ListView.builder(
        itemCount: textModelLists.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              onTap: () {
                Navigator.push(
                  // OnPressed 함수에 넣기
                  context,
                  MaterialPageRoute(builder: (context) => SentenceScreen()),
                );
              },
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${textModelLists[index].paragraph}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${textModelLists[index].sentences}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${textModelLists[index].words}'),
                    ),
//                    Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Text('${textModelLists[index].translatedText.toString()}'),
//                    ),

                  ],
                ),
              )),
        ),
      ),
    );
  }
}
