
import 'package:chalkboard/imageBoard_portrait.dart';
import 'package:flutter/material.dart';

import 'imageBoard_landscape.dart';



class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {



  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        return orientation == Orientation.landscape ? ImageBoardLandScape() : ImageBoardPortrait();
      },
    );
  }
}
