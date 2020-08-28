import 'package:flutter/material.dart';
import 'package:testmaker/theme/i_set_color.dart';

class FilterChipWidget extends StatefulWidget {
  final String chipName;

  FilterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: FilterChip(
        label: Text(widget.chipName),
        labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 12.0),
        selected: _isSelected,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10.0),
        ),
        backgroundColor: Color(0xffededed),
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
        selectedColor: Color(0xffeadffd),
          checkmarkColor: mainColor,

      ),
    );
  }
}
