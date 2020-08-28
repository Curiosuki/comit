import 'package:comit/components/button/circle_button.dart';
import 'package:comit/components/button/heart_button.dart';
import 'package:comit/components/button/main_button.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Chat Page'),
        centerTitle: true,
        backgroundColor: mainColor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(FontAwesomeIcons.exclamationCircle),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(FontAwesomeIcons.bars),

          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'When the messages includes illegal sexual acts, drug dealing, fraud, threats, or anything else that is against law, your account will be suspended without any warning.',
                  style: ISetText.bodyGrey,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: CircleButton(
                        width: 40.0,
                        height: 40.0,
                        onTap: null,
                        child: Icon(
                          FontAwesomeIcons.fileImage,
                          color: mainColor,
                        ),
                      )),
                  iWidthMedium,
                  Flexible(
                    flex: 6,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type your message here...',
                        focusColor: mainColor,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: black_500),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: mainColor),
                        ),
                      ),
                    ),
                  ),
                  iWidthMedium,
                  Flexible(
                      flex: 1,
                      child: CircleButton(
                        width: 40.0,
                        height: 40.0,
                        onTap: null,
                        child: Icon(
                          Icons.send,
                          color: mainColor,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
