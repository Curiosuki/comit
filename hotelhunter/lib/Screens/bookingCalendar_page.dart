import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Widgets/i_Button_Flat.dart';
import 'package:hotelhunter/Widgets/i_Calendar.dart';

class BookingCalendarPage extends StatefulWidget {
  @override
  _BookingCalendarPageState createState() => _BookingCalendarPageState();
}

class _BookingCalendarPageState extends State<BookingCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('예약하기'),
        centerTitle: true,
      ),
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
            IButtonFlat(
              title: '예약하기',
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}


