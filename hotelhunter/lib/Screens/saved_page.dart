import 'package:flutter/material.dart';
import 'package:hotelhunter/Themes/i_set_color.dart';
import 'package:hotelhunter/Widgets/i_GridTile_Product.dart';

class SavedPage extends StatefulWidget {
  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.topRight,
            children: [
              IGridTileProduct(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: mainColor.withOpacity(0.5),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.clear, color: Colors.white, size: 18,),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
