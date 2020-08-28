import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_string.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';



class Tab10 extends StatefulWidget {
  @override
  _Tab10State createState() => _Tab10State();
}

class _Tab10State extends State<Tab10> {
  String dropdownValue1 = '국어';
  String dropdownValue2 = '교과서';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(25.0))
                      ),
                      child: TextField(
                        cursorColor: mainColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: mainColor,),
                          border: InputBorder.none,
                          hintText: '교재를 검색해주세요',
                          hintStyle: TextStyle(color: mainColor),
                        ),
                      ),
                    ),
                    ExpansionTile(
                      leading: Text('1'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network('https://image.yes24.com/momo/TopCate2805/MidCate008/171171327.jpg', fit: BoxFit.cover, width: 120, height: 150,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('· 과목:  수학'),
                                iHeightMedium,
                                Text('· 종류:  부교재'),
                                iHeightMedium,
                                Text('· 교재명:  개념원리 수학1'),
                                iHeightMedium,
                                Text('· 전체목차:  12개'),
                              ],
                            ),
                          )

                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ch1. 집합', style: ISetText.bodyblack,),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1. 집합의 정의', style: ISetText.textSectionBlack,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 80,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: '페이지',
                                                  hintStyle: TextStyle(fontSize: 12)
                                              ),
                                            )),
                                        iWidthLarge,
                                        Container(
                                            width: 80,
                                            child: TextField( decoration: InputDecoration(
                                                hintText: '문항번호',
                                                hintStyle: TextStyle(fontSize: 12)
                                            ),)),
                                        iWidthLarge,
                                        Container(
                                            width: 400,
                                            child: TextField( decoration: InputDecoration(
                                                hintText: '비메오 URL',
                                                hintStyle: TextStyle(fontSize: 12)
                                            ),)),
                                        IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {  },
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.send),
                                          onPressed: () {  },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),






                      ],
                    ),

                  ],
                ),
              ),
            ),
            iVerticalDivider,
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    actionExtentRatio: 0.25,
                    child: ListTile(
                      onTap: (){},
                      leading: Image.network('https://post-phinf.pstatic.net/MjAxODA2MjBfNDQg/MDAxNTI5NDc0NjQ2NjA5.w44_AHl2P9rsHUYjy-4ZdFOAHaQctCzXzhWvVly1Ejcg.dZrZG9frQyc16uRKRKJSDMhlr40wCnpgX2yp4KG-tIIg.JPEG/%EA%B9%80%EC%83%88%EB%A1%A01.jpg?type=w1200'),
                      title: Text('코로나 대비 방역 상황'),
                      subtitle: Text(dummyText),
                    ),
                    actions: [
                      IconSlideAction(
                        caption: '삭제',
                        color: Colors.redAccent,
                        icon: Icons.delete,
                        onTap: () {},
                      ),
                      IconSlideAction(
                        caption: '수정',
                        color: Colors.blueAccent,
                        icon: Icons.edit,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
