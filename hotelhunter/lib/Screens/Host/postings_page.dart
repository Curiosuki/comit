import 'package:flutter/material.dart';
import 'package:hotelhunter/Widgets/i_ListTile_Posting.dart';

class PostingsPage extends StatefulWidget {
  @override
  _PostingsPageState createState() => _PostingsPageState();
}

class _PostingsPageState extends State<PostingsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) =>
            index == 2 ? IListTileCreatePosting() : IListTilePosting());
  }
}
