import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_string.dart';

class IListTileMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              padding: iPaddingAll8,
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dummyText, textAlign: TextAlign.start,),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text('9월 1일'))
                ],
              ),
            ),
          ),
          iWidth8,
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar1.jpg'),
            radius: 25,
          ),
        ],
      ),
    );
  }
}



