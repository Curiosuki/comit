import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:search/models/text_model.dart';



class HomeScreen extends StatelessWidget {


  Future<List<TextModel>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    if (search == "empty") return [];
    if (search == "error") throw Error();
    return List.generate(search.length, (int index) {
      TextModel textModel =  textModelLists[index];

      return TextModel(
        category: "카테고리 : $search ${textModel.category}",
        paragraph: "영어지문 : ${textModel.paragraph}",
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SearchBar<TextModel>(
            onSearch: search,
            onItemFound: (TextModel post, int index) {
              return ListTile(
                title: Text(post.category),
                subtitle: Text(post.paragraph),
              );
            },
          ),
        ),
      ),
    );
  }
}
