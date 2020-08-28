import 'package:flutter/material.dart';
import 'package:paragraph/text_model.dart';


class SentenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sentence Screen'),
      ),
      body: ListView.builder(
          itemCount: textModelLists.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${textModelLists[index].sentences}'),
            );
          }),
    );
  }
}
