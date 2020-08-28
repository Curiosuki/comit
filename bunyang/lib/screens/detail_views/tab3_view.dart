import 'package:comit/screens/detail_views/location_view.dart';
import 'package:comit/theme/i_set_margin.dart';
import 'package:comit/theme/i_set_boxdecoration.dart';
import 'package:comit/theme/i_set_icons.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';


class Tab3View extends StatefulWidget {
  @override
  _Tab3ViewState createState() => _Tab3ViewState();
}

class _Tab3ViewState extends State<Tab3View> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0),
      child: ListView(
        children: <Widget>[
          Text(
            'Meeting Place',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          iHeightMedium,
          LocationView(),
          iHeightMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: iLocation,
              ),
              Expanded(
                flex: 9,
                child: Text('80 Delancey Street, NewYork'),
              ),
            ],
          ),
          iDivider,
          Text(
            'Class Dates',
            style: ISetText.body.copyWith(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: iBoxDecoration,
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    '1st',
                    style: ISetText.body,
                  ),
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Text(
                      'Mon, March 31',
                      style: ISetText.title,
                    ),
                    Spacer(),
                    Text(
                      '19:00~21:00',
                      style: ISetText.textSectionGrey,
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  //onTap: () => Navigator.pushNamed(context, '/locationview'),
                  child: Column(
                    children: <Widget>[
                      iLocation,
                      Spacer(),
                      Text(
                        'Map',
                        style: ISetText.textSectionGrey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
