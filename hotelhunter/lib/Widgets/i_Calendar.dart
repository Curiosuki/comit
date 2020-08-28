import 'package:flutter/material.dart';
import 'package:hotelhunter/Models/appConstants.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Themes/i_set_textstyle.dart';

class ICalendar extends StatefulWidget {
  final int monthIndex;

  const ICalendar({Key key, this.monthIndex}) : super(key: key);

  @override
  _ICalendarState createState() => _ICalendarState();
}

class _ICalendarState extends State<ICalendar> {
  List<MonthTile> _monthTiles;
  int _currentMonthInt;
  int _currentYearInt;

  void _setUpMonthTiles() {
    setState(() {
      _monthTiles = [];
      int daysInMonths = AppConstants.daysInMonths[_currentMonthInt];
      DateTime firstDayOfMonth = DateTime(_currentYearInt, _currentMonthInt, 1);
      int firstWeekdayOfMonth = firstDayOfMonth.weekday;

      if (firstWeekdayOfMonth != 7) {
        for (int i = 0; i < firstWeekdayOfMonth; i++) {
          _monthTiles.add(MonthTile(
            dateTime: null,
          ));
        }
      }
      for (int i = 1; i <= daysInMonths; i++) {
        DateTime date = DateTime(_currentYearInt, _currentMonthInt, i);
        _monthTiles.add(MonthTile(
          dateTime: date,
        ));
      }
    });
  }

  @override
  void initState() {
    _currentMonthInt = (DateTime.now().month + widget.monthIndex) % 12;
    if (_currentMonthInt == 0) {
      _currentMonthInt = 12;
    }

    _currentYearInt = DateTime.now().year;
    if (_currentYearInt < DateTime.now().month) {
      _currentYearInt += 1;
    }

    _monthTiles = [];
    for (int i = 0; i < 31; i++) {
      _monthTiles.add(MonthTile(
        dateTime: DateTime.now(),
      ));
    }

    _setUpMonthTiles();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "$_currentYearInt년 ${AppConstants.monthDict[_currentMonthInt]}",
            style: ITextStyle.display1,
          ),
          iHeight32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sun'),
              Text('Mon'),
              Text('Tue'),
              Text('Wed'),
              Text('Thu'),
              Text('Fri'),
              Text('Sat'),
            ],
          ),
          iHeight16,
          GridView.builder(
              shrinkWrap: true,
              itemCount: _monthTiles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1 / 1,
              ),
              itemBuilder: (context, index) {
                MonthTile monthTile = _monthTiles[index];
                return MaterialButton(onPressed: () {}, child: monthTile);
              })
        ],
      ),
    );
  }
}

class MonthTile extends StatelessWidget {
  final DateTime dateTime;

  const MonthTile({Key key, this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.dateTime == null ? "" : this.dateTime.day.toString());
  }
}
