import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijackupgrade/Models/hakwon_model.dart';
import 'package:hijackupgrade/Screens/Teachers/map_screen.dart';
import 'package:hijackupgrade/Screens/Teachers/review_screen.dart';
import 'package:hijackupgrade/Themes/i_set_color.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Themes/i_set_textstyle.dart';

class Teachers extends StatefulWidget {
  @override
  _TeachersState createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('전국연합 선생님들'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: mainColor,
            tabs: [
              Tab(icon: Text('전국샘들', style: ITextStyle.body,)),
              Tab(icon: Text('지도보기', style: ITextStyle.body,)),
              Tab(icon: Text('수강후기', style: ITextStyle.body,)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: hakwonLists.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/teacherDetailScreen'),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: Card(
                      elevation: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.network(hakwonLists[index].tImage, fit: BoxFit.cover,),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${hakwonLists[index].hakwonName}', style: ITextStyle.subTitle,),
                                  iHeight16,
                                  Text('${hakwonLists[index].phoneNum}', style: ITextStyle.textSectionBlack,),
                                  iHeight8,
                                  Text('${hakwonLists[index].address}', style: ITextStyle.textSectionBlack,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            MapScreen(),
            ReviewScreen()
          ],
        )
      ),
    );
  }
}
