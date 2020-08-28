import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_spacing.dart';
import 'package:hotelhunter/Widgets/i_Form_Search.dart';
import 'package:hotelhunter/Widgets/i_GridTile_Product.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          iHeight16,
          IFormSearch(
            hintText: '검색하세요',
          ),
          iHeight16,
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3/4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              itemBuilder: (context, index) => IGridTileProduct()),
        ],
      ),
    );
  }
}
