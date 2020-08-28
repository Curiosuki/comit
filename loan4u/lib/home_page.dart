import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loan4u/byproduct.dart';
import 'package:loan4u/byregion.dart';
import 'package:loan4u/main_slider.dart';
import 'package:loan4u/theme/i_set_color.dart';
import 'package:loan4u/theme/i_set_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _tabs = ['상품별', '지역별', '실시간대출문의'];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.pencilAlt),
          label: Text(
            '글쓰기',
            style: ISetText.subTitleWhite,
          ),
          backgroundColor: mainColor,
        ),
        appBar: AppBar(
          elevation: 0,
          title: const Text('올대출', style: TextStyle(color: Colors.redAccent, fontSize: 25),),
          centerTitle: true,
          backgroundColor: black_50,
          bottom:TabBar(
            labelColor: mainColor,
            indicatorColor: mainColor,
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: [
            ByProduct(),
            ByRegion(),
            ByProduct(),
          ],
        ),
      ),
    );
  }
}
