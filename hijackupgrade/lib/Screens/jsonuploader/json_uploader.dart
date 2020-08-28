import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

import 'hijack.dart';

class JsonUploader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<String> _loadFromAsset() async {
      String data = await DefaultAssetBundle.of(context)
          .loadString("assets/jsons/paragraph.json");
      var decodedJson = jsonDecode(data);

      List tags = decodedJson != null ? List.from(decodedJson) : null;

      tags.forEach((element) async {
        await Firestore.instance
            .collection('paragraph')
            .add({'id': element['id'], 'paragraph': element['paragraph']});
      });

//      for (var i = 22900; i < 22915; i++) {
//        if (await hijack_get('$i')) {
//          print('sleep 3 seconds');
//          sleep(Duration(seconds: 3));
//        }
//
//        await hijack_analyze('$i');
//        // break;
//      }

    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text(
            'Upload',
            style: ITextStyle.bodyWhite,
          ),
          onPressed: () {
            _loadFromAsset();
          },
        ),
      ),
    );
  }
}
