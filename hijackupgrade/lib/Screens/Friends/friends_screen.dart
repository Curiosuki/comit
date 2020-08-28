import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Models/user_model.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

class FriendsScreen extends StatelessWidget {

  Future<List<TestUser>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    if (search == "empty") return [];
    if (search == "error") throw Error();
    return List.generate(search.length, (int index) {
      return TestUser(
        imgUrl: '$search',
        name: '$search',
        school: '$search',
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('우리학교 친구찾기'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SearchBar<TestUser>(
          onSearch: search,
          onItemFound: (TestUser user, int index) {
            return ListTile(
              //leading: Image.network(userLists[index].imgUrl),
              title: Text(userLists[index].name),
              subtitle: Text(userLists[index].school),
            );
          },
          hintText: '이름으로 검색해주세요',
          hintStyle: ITextStyle.textSection,
          loader: Center(child: CircularProgressIndicator()),
          searchBarStyle: SearchBarStyle(
            backgroundColor: mainColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          icon: Icon(Icons.search, color: mainColor,),
          placeHolder: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: userLists.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('${userLists[index].imgUrl}'),
                  ),
                  title: Text('${userLists[index].name}'),
                  subtitle: Text('${userLists[index].school} ${userLists[index].grade}학년'),
                )),
          ),
        ),
      )
    );
  }
}
