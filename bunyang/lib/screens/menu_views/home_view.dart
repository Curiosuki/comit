import 'package:comit/components/main_category.dart';
import 'package:comit/components/main_list.dart';
import 'package:comit/components/main_menu.dart';
import 'package:comit/components/main_search.dart';
import 'package:comit/components/main_slider.dart';
import 'package:comit/theme/i_set_margin.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MainSearch(),
              iHeightLarge,
              MainMenu(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Category',
                style: ISetText.title,
              ),
              iHeightMedium,
              Category(),
              iHeightLarge,
              Text(
                'Popluar',
                style: ISetText.title,
              ),
              iHeightMedium,
              MainSlider(),
              iHeightLarge,
              Text(
                'Recommended',
                style: ISetText.title,
              ),
              iHeightMedium,
              MainList(),
              iHeightLarge,



            ],
          ),
        ),
      ),
    );
  }
}
