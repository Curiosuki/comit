import 'package:flutter/material.dart';
import 'package:hotelhunter/Widgets/i_ListTile_Message.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('대화 리스트'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return IListTileMessage();
                }),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: TextField(
              cursorColor: Colors.blueAccent,
              textInputAction: TextInputAction.send,
              decoration: InputDecoration(
                  suffix: InkResponse(
                      onTap: () {},
                      child: Icon(
                        Icons.send,
                        size: 20,
                        color: Colors.blueAccent,
                      )),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
