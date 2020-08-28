import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';

class InBoxPage extends StatefulWidget {
  @override
  _InBoxPageState createState() => _InBoxPageState();
}

class _InBoxPageState extends State<InBoxPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return ConversationListTile();
        });
  }
}

class ConversationListTile extends StatefulWidget {
  ConversationListTile({Key key}) : super(key: key);

  @override
  _ConversationListTileState createState() => _ConversationListTileState();
}

class _ConversationListTileState extends State<ConversationListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, '/conversationPage'),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/avatar1.jpg'),
        radius: 25,
      ),
      title: Text(
        'Kevin',
        style: ITextStyle.bodyblack,
      ),
      subtitle: Text('hey how r u?'),
      trailing: Text('2020-07-03'),
    );
  }
}
