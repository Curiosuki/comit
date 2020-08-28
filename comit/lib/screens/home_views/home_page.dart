import 'package:comit/screens/home_views/home_category.dart';
import 'package:comit/screens/home_views/home_new.dart';
import 'package:comit/screens/home_views/home_recommended.dart';
import 'package:comit/screens/home_views/home_search.dart';
import 'package:comit/screens/home_views/home_popular.dart';
import 'package:comit/theme/i_set_size.dart';
import 'package:comit/theme/i_set_color.dart';
import 'package:comit/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget _getFAB() {
    return SpeedDial(
      overlayColor: backgroundColor,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22),
      backgroundColor: mainColor,
      //visible: true,
      curve: Curves.fastLinearToSlowEaseIn,
      children: [
        // FAB 1
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.home,
              size: 20,
            ),
            backgroundColor: mainColor,
            onTap: () => Navigator.pushNamed(context, '/homeview'),
            label: 'Home',
            labelStyle: ISetText.bodyWhite,
            labelBackgroundColor: mainColor),
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            backgroundColor: mainColor,
            onTap: () => Navigator.pushNamed(context, '/profileview'),
            label: 'Profile',
            labelStyle: ISetText.bodyWhite,
            labelBackgroundColor: mainColor),
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.heart,
              size: 20,
            ),
            backgroundColor: mainColor,
            onTap: () => Navigator.pushNamed(context, '/wishlists'),
            label: 'Wish Lists',
            labelStyle: ISetText.bodyWhite,
            labelBackgroundColor: mainColor),
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.comment,
              size: 20,
            ),
            backgroundColor: mainColor,
            onTap: () => Navigator.pushNamed(context, '/chatlists'),
            label: 'Chat Lists',
            labelStyle: ISetText.bodyWhite,
            labelBackgroundColor: mainColor),
        SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.mapMarkerAlt,
              size: 20,
            ),
            backgroundColor: mainColor,
            onTap: () => Navigator.pushNamed(context, '/mapview'),
            label: 'Map',
            labelStyle: ISetText.bodyWhite,
            labelBackgroundColor: mainColor),
        // FAB 2
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _getFAB(),
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MainSearch(),
            ],
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  iHeightMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Category',
                        style: ISetText.title,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/searchview'),
                        child: Row(
                          children: <Widget>[
                            Text('more', style: ISetText.body,),
                            Icon(
                              FontAwesomeIcons.chevronRight,
                              color: mainColor,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  iHeightMedium,
                  CategoryView(),
                  iHeightLarge,
                  Text(
                    'Popluar',
                    style: ISetText.title,
                  ),
                  iHeightMedium,
                  MainSlider(),
                  iHeightLarge,
                  Text(
                    'New',
                    style: ISetText.title,
                  ),
                  iHeightMedium,
                  NewLists(),
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
          // MainMenu(),
        ],
      ),
    );
  }
}
