import 'package:admin/main.dart';
import 'package:admin/theme/i_set_color.dart';
import 'package:admin/theme/i_set_size.dart';
import 'package:admin/theme/i_set_string.dart';
import 'package:admin/theme/i_set_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: mainColor,
                  title: Text('회원등급관리'),
                ),
                  body: ListView(
                  children: [
                    ListTile(
                      leading: Text('1등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('2등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('3등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('4등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('5등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text('6등급'),
                      title: Container(
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                        child: TextField(
                          cursorColor: mainColor,
                          textInputAction: TextInputAction.newline,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          minLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding:
                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                            hintText: '등급명',
                            focusColor: mainColor,
                          ),
                        ),
                      ),
                    ),
                    iHeightLarge,
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        color: mainColor,
                        onPressed: () {  },
                        child: Text('저장', style: ISetText.bodyWhite,),

                      ),
                    )

                  ],
                ),
              ),
            ),
            iVerticalDivider,
            Expanded(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: mainColor,
                  title: Text('회원리스트'),
                ),
                body: Column(
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
                          hintText: '회원의 이름을 검색해주세요',
                          hintStyle: TextStyle(color: mainColor),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            ListTile(
                              onTap: (){},
                              leading: CircleAvatar(
                                  backgroundColor: black_50,
                                  radius: 25,
                                  backgroundImage: AssetImage('assets/images/avatar1.jpg')),
                              title: Text('김수빈(subin@naver.com)'),
                              subtitle: RichText(
                                text: TextSpan(
                                  text: '일반회원',
                                  style: TextStyle(color: Colors.blueAccent),
                                  children: <TextSpan>[
                                    TextSpan(text: ' | 가입일: 2020.06.11 | ', style: TextStyle(color: black_500)),
                                    TextSpan(text: '활동', style: TextStyle(color: Colors.green)),
                                  ],
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),
                            ListTile(
                              onTap: (){},
                              leading: CircleAvatar(
                                  backgroundColor: black_50,
                                  radius: 25,
                                  backgroundImage: AssetImage('assets/images/avatar2.jpg')),
                              title: Text('권나라(nara@naver.com)'),
                              subtitle: RichText(
                                text: TextSpan(
                                  text: '판매업체 ',
                                  style: TextStyle(color: Colors.blueAccent),
                                  children: <TextSpan>[
                                    TextSpan(text: ' | 가입일: 2020.06.11 | ', style: TextStyle(color: black_500)),
                                    TextSpan(text: '탈퇴', style: TextStyle(color: Colors.red)),
                                  ],
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            iVerticalDivider,
            Expanded(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: mainColor,
                  title: Text('회원정보'),
                ),
                body: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CircleAvatar(
                                  backgroundColor: black_50,
                                  radius: 50,
                                  backgroundImage: AssetImage('assets/images/avatar1.jpg')),
                              Column(
                                children: [
                                  Text('포인트', style: ISetText.body,),
                                  iHeightMedium,
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: '30,000', style: ISetText.title),
                                        TextSpan(text: '', style: TextStyle(color: black_500)),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text('등급', style: ISetText.body,),
                                  iHeightMedium,
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: '일반회원', style: ISetText.title),
                                        TextSpan(text: '', style: TextStyle(color: black_500)),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text('활동여부', style: ISetText.body,),
                                  iHeightMedium,
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: '활동', style: ISetText.title),
                                        TextSpan(text: '', style: TextStyle(color: black_500)),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: 4,
                          child: Scaffold(
                            appBar: AppBar(
                              elevation: 0,
                              flexibleSpace: Card(
                                elevation: 3,
                                color: mainColor,
                                child: TabBar(
                                  indicator: CircleTabIndicator(color: Colors.white, radius: 3),
                                  tabs: [
                                    Tab(text: '회원정보',),
                                    Tab(text: '결제내역',),
                                    Tab(text: '구매내역',),
                                    Tab(text: '일대일문의',),
                                  ],
                                ),
                              ),
                            ),
                            body: Card(
                              elevation: 3,
                              child: TabBarView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView(
                                      children: [
                                        DataTable(
                                          columns: [
                                            DataColumn(
                                              label: Text('분류'),
                                            ),
                                            DataColumn(
                                              label: Text('회원정보'),
                                            ),

                                          ],
                                          rows: [
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('코드'),
                                                  ),
                                                  DataCell(
                                                    Text('0000'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('이름'),
                                                  ),
                                                  DataCell(
                                                    Text('김수빈'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('성별'),
                                                  ),
                                                  DataCell(
                                                    Text('여자'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('생일'),
                                                  ),
                                                  DataCell(
                                                    Text('2001년 1월 1일'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('전화'),
                                                  ),
                                                  DataCell(
                                                    Text('010-0000-0000'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('이메일'),
                                                  ),
                                                  DataCell(
                                                    Text('subin@naver.com'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('가입일'),
                                                  ),
                                                  DataCell(
                                                    Text('2020년 6월 1일'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                            DataRow(
                                                cells: [
                                                  DataCell(
                                                    Text('최종로그인'),
                                                  ),
                                                  DataCell(
                                                    Text('2020년 6월 1일'),
                                                    showEditIcon: true,
                                                  ),
                                                ]
                                            ),
                                          ],


                                        ),

                                      ],
                                    ),
                                  ),
                                  Text('결제내역'),
                                  Text('구매내역'),
                                  ListView(
                                    children: [
                                      ExpansionTile(
                                        expandedCrossAxisAlignment: CrossAxisAlignment.end,
                                        leading: CircleAvatar(
                                            backgroundColor: black_50,
                                            radius: 25,
                                            backgroundImage:
                                            AssetImage('assets/images/avatar1.jpg')),
                                        title: Text('질문 있습니다.'),
                                        trailing: Text('2020-06-01'),
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(dummyText),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: '판매업체 ',
                                                style: TextStyle(color: Colors.blueAccent),
                                                children: <TextSpan>[
                                                  TextSpan(text: '이미자', style: TextStyle(color: black_900)),
                                                  TextSpan(text: '(mija@naver.com)', style: TextStyle(color: black_900)),
                                                ],
                                              ),
                                            ),
                                          ),
                                          ButtonBar(
                                            children: [
                                              FlatButton(
                                                onPressed: (){},
                                                child: Text('답변', style: TextStyle(color: Colors.white),),
                                                color: Colors.blueAccent,
                                              ),
                                              FlatButton(
                                                onPressed: (){},
                                                child: Text('삭제', style: TextStyle(color: Colors.white),),
                                                color: Colors.redAccent,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
