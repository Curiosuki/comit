import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';
import 'package:hotelhunter/Widgets/i_Calendar.dart';
import 'package:hotelhunter/Widgets/i_ListTile_Posting.dart';

class BookingsPage extends StatefulWidget {
  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: iPaddingAll8,
        child: ListView(
          children: [
            iHeight32,
            Container(
              height: 450,
              child: PageView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return ICalendar(
                      monthIndex: index,
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filter by Posting', style: ITextStyle.body,),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Reset', style: ITextStyle.body,),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) =>
                    index == 2 ? IListTileCreatePosting() : IListTilePosting())
          ],
        ),
      ),
    );
  }
}
