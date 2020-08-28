import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multi_charts/multi_charts.dart';
import 'package:onlinelectureadmin/components/avatar_button.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_string.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vertical_tabs/vertical_tabs.dart';


class Tab7 extends StatefulWidget {
  @override
  _Tab7State createState() => _Tab7State();
}

class _Tab7State extends State<Tab7> with TickerProviderStateMixin{
  List<String> _tabs = ['학생정보', '교재학습', '문제학습'];

  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
  }

  String dropdownValue1 = '미납';
  String dropdownValue2 = '카드결제';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('전체학생 수', style: ISetText.bodyWhite,),
                              iHeightMedium,
                              Text('250', style: ISetText.display1White,)
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('초등학생 수', style: ISetText.bodyWhite,),
                              iHeightMedium,
                              Text('50', style: ISetText.display1White,)
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('중학생 수', style: ISetText.bodyWhite,),
                              iHeightMedium,
                              Text('50', style: ISetText.display1White,)
                            ],
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.all(Radius.circular(8.0))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('고등학생 수', style: ISetText.bodyWhite,),
                              iHeightMedium,
                              Text('50', style: ISetText.display1White,)
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
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
                        hintText: '학생이름으로 검색해주세요',
                        hintStyle: TextStyle(color: mainColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: (){},
                          leading: Text('1'),
                          title: Row(
                            children: [
                              AvatarButton(
                                radius: 25,
                                avatarUrl: 'assets/images/avatar1.jpg',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('김수빈'),
                              ),
                              Icon(FontAwesomeIcons.female, size: 16, color: Colors.pinkAccent,),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('매탄중학교 1학년'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('010-0000-0000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('수강중', style: TextStyle(color: Colors.blueAccent),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('완납', style: TextStyle(color: Colors.blueAccent),),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          onTap: (){},
                          leading: Text('2'),
                          title: Row(
                            children: [
                              AvatarButton(
                                radius: 25,
                                avatarUrl: 'assets/images/avatar5.jpg',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('홍길동'),
                              ),
                              Icon(FontAwesomeIcons.male, size: 16, color: Colors.blueAccent,),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('매탄중학교 1학년'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('010-0000-0000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('비수강', style: TextStyle(color: Colors.redAccent),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text('미납', style: TextStyle(color: Colors.redAccent),),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          iVerticalDivider,
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: DefaultTabController(
                length: _tabs.length,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.blueAccent,
                    title: Text('학생 정보 관리', style: ISetText.subTitleWhite,),
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      VerticalTabs(
                        selectedTabBackgroundColor: Colors.grey.withOpacity(0.2),
                        indicatorWidth: 0,
                        tabsWidth: 120,
                        direction: TextDirection.ltr,
                        contentScrollAxis: Axis.vertical,
                        changePageDuration: Duration(milliseconds: 300),
                        tabs: [
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('01. 학생정보', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('02. 출석정보', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('03. 상담내용', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('04. 수강강좌', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('05. 원비관리', style: TextStyle(fontSize: 14,),)),),
                        ],
                        contents: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AvatarButton(
                                      radius: 50,
                                      avatarUrl: 'assets/images/avatar1.jpg',
                                    ),
                                    Column(
                                      children: [
                                        Text('수강중 클래스', style: ISetText.body,),
                                        iHeightMedium,
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(text: '3', style: ISetText.display1),
                                              TextSpan(text: '개', style: TextStyle(color: black_500)),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('수강 여부', style: ISetText.body,),
                                        iHeightMedium,
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(text: '수강', style: ISetText.display1),
                                              TextSpan(text: ' 중', style: TextStyle(color: black_500)),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                iHeightLarge,
                                DataTable(
                                  columns: [
                                    DataColumn(
                                      label: Text('분류'),
                                    ),
                                    DataColumn(
                                      label: Text('학생정보'),
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
                                            Text('학교'),
                                          ),
                                          DataCell(
                                            Text('매탄중학교'),
                                            showEditIcon: true,
                                          ),
                                        ]
                                    ),
                                    DataRow(
                                        cells: [
                                          DataCell(
                                            Text('학년'),
                                          ),
                                          DataCell(
                                            Text('1학년'),
                                            showEditIcon: true,
                                          ),
                                        ]
                                    ),
                                    DataRow(
                                        cells: [
                                          DataCell(
                                            Text('지점'),
                                          ),
                                          DataCell(
                                            Text('수원 매탄점'),
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
                                            Text('학부모'),
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
                                  ],


                                )

                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [


                                ExpansionTile(
                                  leading: Text('1'),
                                  title: Text('2020년 6월 출석현황'),
                                  children: [
                                    ListTile(
                                      leading: Text('1회차'),
                                      title:  Container(
                                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                                        child: TextField(
                                          //controller: widget.ctrl,
                                          onTap: callDatePicker,
                                          cursorColor: mainColor,
                                          textInputAction: TextInputAction.newline,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          minLines: 1,
                                          //maxLength: widget.maxLength,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                            hintText:  finaldate == null ? '출석한 날짜와 시간' : '$finaldate',
                                            focusColor: mainColor,


                                          ),
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {  },
                                      ),
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [

                                ExpansionTile(
                                  leading: Text('1'),
                                  title: Text('2020년 6월 1일'),
                                  children: [
                                    Text(dummyText),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('상담자: '),
                                            Text('권현태 선생님')
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            FlatButton(
                                              onPressed: (){},
                                              child: Text('수정', style: TextStyle(color: Colors.white),),
                                              color: Colors.blueAccent,
                                            ),
                                            iWidthMedium,
                                            FlatButton(
                                              onPressed: (){},
                                              child: Text('삭제', style: TextStyle(color: Colors.white),),
                                              color: Colors.redAccent,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],

                                ),


                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [


                                ExpansionTile(
                                  leading: Text('1'),
                                  title: Text('2020년 6월 수강강좌'),
                                  children: [
                                    ListTile(
                                      leading: Text('1'),
                                      title:  Container(
                                        decoration: BoxDecoration(border: Border.all(color: black_500)),
                                        child: TextField(
                                          //controller: widget.ctrl,
                                          onTap: callDatePicker,
                                          cursorColor: mainColor,
                                          textInputAction: TextInputAction.newline,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          minLines: 1,
                                          //maxLength: widget.maxLength,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            contentPadding:
                                            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                            hintText:  '',
                                            focusColor: mainColor,


                                          ),
                                        ),
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {  },
                                      ),
                                    ),

                                  ],

                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              children: [
                                ExpansionTile(
                                  leading: Text('1'),
                                  title: Row(
                                    children: [
                                      Text('2020년 6월'),
                                      iWidthLarge,
                                      Text('미납', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(Icons.edit,),
                                    iconSize: 18,
                                    onPressed: () {
                                      showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
                                        return Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: ListView(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.symmetric(vertical: 16),
                                                  color: mainColor,
                                                  height: 60,
                                                  child: Center(child: Text('2020년 6월 수강료', style: ISetText.titleWhite,)),
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,
                                                                  child: Text(
                                                                    '1. 수납상태',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child: DropdownButtonHideUnderline(
                                                                    child: DropdownButton(
                                                                      value: dropdownValue1,
                                                                      onChanged: (String newValue) {
                                                                        setState(() {
                                                                          dropdownValue1 = newValue;
                                                                        });
                                                                      },
                                                                      items: <String>['미납', '완납']
                                                                          .map<DropdownMenuItem<String>>((String value) {
                                                                        return DropdownMenuItem<String>(
                                                                          value: value,
                                                                          child: Text(value),
                                                                        );
                                                                      })
                                                                          .toList(),

                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '2. 수납일',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
                                                                    onTap: callDatePicker,
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
                                                                      hintText: finaldate == null ? '수납일' : '$finaldate',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,
                                                                  child: Text(
                                                                    '3. 결제방법',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child: DropdownButtonHideUnderline(
                                                                    child: DropdownButton(
                                                                      value: dropdownValue2,
                                                                      onChanged: (String newValue) {
                                                                        setState(() {
                                                                          dropdownValue2 = newValue;
                                                                        });
                                                                      },
                                                                      items: <String>['카드결제', '계좌입금', '현찰']
                                                                          .map<DropdownMenuItem<String>>((String value) {
                                                                        return DropdownMenuItem<String>(
                                                                          value: value,
                                                                          child: Text(value),
                                                                        );
                                                                      })
                                                                          .toList(),

                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '4. 수업비용',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
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
                                                                      hintText: '금액',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '5. 교재비',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
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
                                                                      hintText: '금액',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '6. 할인액',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
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
                                                                      hintText: '금액',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '7. 미납액',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
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
                                                                      hintText: '금액',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            iHeightLarge,
                                                            Row(
                                                              children: [
                                                                Container(
                                                                  width: 150,

                                                                  child: Text(
                                                                    '8. 결제총액',
                                                                    style: ISetText.body,
                                                                  ),
                                                                ),
                                                                iWidthLarge,
                                                                Container(
                                                                  width: 200,
                                                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                                                  decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                                  child:  TextField(
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
                                                                      hintText: '금액',
                                                                      focusColor: mainColor,


                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    iHeightLarge,
                                                    Container(
                                                      width: 1200,
                                                      padding: EdgeInsets.symmetric(horizontal: 4),
                                                      decoration: BoxDecoration(border: Border.all(color: black_500)),
                                                      child:  TextField(
                                                        cursorColor: mainColor,
                                                        textInputAction: TextInputAction.newline,
                                                        keyboardType: TextInputType.multiline,
                                                        maxLines: 30,
                                                        minLines: 3,
                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          focusedBorder: InputBorder.none,
                                                          contentPadding:
                                                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                                          hintText: '비고',
                                                          focusColor: mainColor,


                                                        ),
                                                      ),
                                                    ),
                                                    iHeightLarge,
                                                    Container(
                                                      width: 1200,
                                                      height: 50,
                                                      child: FlatButton(
                                                        color: mainColor,
                                                        onPressed: () {  },
                                                        child: Text('업로드', style: ISetText.bodyWhite,),

                                                      ),
                                                    )
                                                  ],
                                                )

                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                    },

                                  ),
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: DataTable(
                                        columns: [
                                          DataColumn(
                                            label: Text('상태'),
                                          ),
                                          DataColumn(
                                            label: Text('수납일'),
                                          ),
                                          DataColumn(
                                            label: Text('결제방법'),
                                          ),
                                          DataColumn(
                                            label: Text('수업료'),
                                          ),
                                        ],
                                        rows: [
                                          DataRow(
                                              cells: [
                                                DataCell(
                                                  Text('미납'),
                                                ),
                                                DataCell(
                                                  Text('00/12/31'),
                                                ),
                                                DataCell(
                                                  Text('카드결제'),
                                                ),
                                                DataCell(
                                                  Text('600,000'),
                                                ),
                                              ]
                                          ),

                                        ],


                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: DataTable(
                                        columns: [
                                          DataColumn(
                                            label: Text('교재비'),
                                          ),
                                          DataColumn(
                                            label: Text('할인액'),
                                          ),
                                          DataColumn(
                                            label: Text('미납액'),
                                          ),
                                          DataColumn(
                                            label: Text('결제총액'),
                                          ),
                                        ],
                                        rows: [
                                          DataRow(
                                              cells: [
                                                DataCell(
                                                  Text('20,000'),
                                                ),
                                                DataCell(
                                                  Text('60,000'),
                                                ),
                                                DataCell(
                                                  Text('0'),
                                                ),
                                                DataCell(
                                                  Text('580,000'),
                                                ),
                                              ]
                                          ),

                                        ],


                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: Text(dummyText),
                                    )
                                  ],
                                ),
                                ExpansionTile(
                                  leading: Text('2'),
                                  title: Row(
                                    children: [
                                      Text('2020년 5월'),
                                      iWidthLarge,
                                      Text('완납', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700),),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.edit,),
                                    iconSize: 18,
                                  ),
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: DataTable(
                                        columns: [
                                          DataColumn(
                                            label: Text('상태'),
                                          ),
                                          DataColumn(
                                            label: Text('수납일'),
                                          ),
                                          DataColumn(
                                            label: Text('결제방법'),
                                          ),
                                          DataColumn(
                                            label: Text('수업료'),
                                          ),
                                        ],
                                        rows: [
                                          DataRow(
                                              cells: [
                                                DataCell(
                                                  Text('미납'),
                                                ),
                                                DataCell(
                                                  Text('00/12/31'),
                                                ),
                                                DataCell(
                                                  Text('카드결제'),
                                                ),
                                                DataCell(
                                                  Text('600,000'),
                                                ),
                                              ]
                                          ),

                                        ],


                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: DataTable(
                                        columns: [
                                          DataColumn(
                                            label: Text('교재비'),
                                          ),
                                          DataColumn(
                                            label: Text('할인액'),
                                          ),
                                          DataColumn(
                                            label: Text('미납액'),
                                          ),
                                          DataColumn(
                                            label: Text('결제총액'),
                                          ),
                                        ],
                                        rows: [
                                          DataRow(
                                              cells: [
                                                DataCell(
                                                  Text('20,000'),
                                                ),
                                                DataCell(
                                                  Text('60,000'),
                                                ),
                                                DataCell(
                                                  Text('0'),
                                                ),
                                                DataCell(
                                                  Text('580,000'),
                                                ),
                                              ]
                                          ),

                                        ],


                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                                      child: Text(dummyText),
                                    )
                                  ],
                                ),



                              ],
                            ),
                          ),
                        ],

                      ),

                      VerticalTabs(
                        selectedTabBackgroundColor: Colors.grey.withOpacity(0.2),
                        indicatorWidth: 0,
                        tabsWidth: 120,
                        direction: TextDirection.ltr,
                        contentScrollAxis: Axis.vertical,
                        changePageDuration: Duration(milliseconds: 300),
                        tabs: [
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('01. 국어', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('02. 영어', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('03. 수학', style: TextStyle(fontSize: 14,),)),),
                          Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('04. 과학', style: TextStyle(fontSize: 14,),)),),
                        ],
                        contents: [
                          Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Table(
                                    children: [
                                      TableRow(
                                        children: [
                                          Center(child: Text('학습한 강의', style: ISetText.body,)),
                                          Center(child: Text('학습한 시간', style: ISetText.body,)),
                                          Center(child: Text('OMR 전체 정답률', style: ISetText.body,))
                                        ]
                                      ),
                                      TableRow(
                                          children: [
                                            Container(
                                              height: 120,
                                              alignment: Alignment.center,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  iHeightLarge,
                                                  RichText(
                                                    text: TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(text: '20', style: ISetText.display1),

                                                      ],
                                                    ),
                                                  ),
                                                  iHeightLarge,
                                                  RichText(
                                                    text: TextSpan(
                                                      children: <TextSpan>[
                                                        TextSpan(text: '전체: 3000개', style: ISetText.textSectionGrey),

                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                height: 120,
                                                alignment: Alignment.center,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    iHeightLarge,
                                                    RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(text: '700', style: ISetText.display1),
                                                        ],
                                                      ),
                                                    ),
                                                    iHeightLarge,
                                                    RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(text: '전체: 3000hrs', style: ISetText.textSectionGrey),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),),
                                            Center(
                                              child: CircularPercentIndicator(
                                                animationDuration: 1000,
                                                radius: 120.0,
                                                lineWidth: 10.0,
                                                animation: true,
                                                percent: 0.7,
                                                center: new Text(
                                                  "70.0%",
                                                  style: ISetText.display1,
                                                ),
                                                circularStrokeCap: CircularStrokeCap.round,
                                                progressColor: mainColor,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Table(
                                    children: [
                                      TableRow(
                                          children: [
                                            Center(child: Text('문제풀이 평가', style: ISetText.body,)),
                                            Center(child: Text('방사형 그래프', style: ISetText.body,))
                                          ]
                                      ),
                                      TableRow(
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  iHeightLarge,
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(width: 100, child: Text('계산력')),
                                                      LinearPercentIndicator(
                                                        width: 150,
                                                        animation: true,
                                                        lineHeight: 15.0,
                                                        animationDuration: 1000,
                                                        percent: 0.8,
                                                        center: Text("80.0%", style: ISetText.captionWhite,),
                                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                                        progressColor: mainColor,
                                                      ),
                                                    ],
                                                  ),
                                                  iHeightMedium,
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(width: 100, child: Text('이해력')),
                                                      LinearPercentIndicator(
                                                        width: 150,
                                                        animation: true,
                                                        lineHeight: 15.0,
                                                        animationDuration: 1000,
                                                        percent: 0.8,
                                                        center: Text("80.0%", style: ISetText.captionWhite,),
                                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                                        progressColor: mainColor,
                                                      ),
                                                    ],
                                                  ),
                                                  iHeightMedium,
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(width: 100, child: Text('추론력')),
                                                      LinearPercentIndicator(
                                                        width: 150,
                                                        animation: true,
                                                        lineHeight: 15.0,
                                                        animationDuration: 1000,
                                                        percent: 0.8,
                                                        center: Text("80.0%", style: ISetText.captionWhite,),
                                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                                        progressColor: mainColor,
                                                      ),
                                                    ],
                                                  ),
                                                  iHeightMedium,
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(width: 100, child: Text('문제해결능력')),
                                                      LinearPercentIndicator(
                                                        width: 150,
                                                        animation: true,
                                                        lineHeight: 15.0,
                                                        animationDuration: 1000,
                                                        percent: 0.8,
                                                        center: Text("80.0%", style: ISetText.captionWhite,),
                                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                                        progressColor: mainColor,
                                                      ),
                                                    ],
                                                  ),
                                                  iHeightMedium,
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(width: 100, child: Text('응용력')),
                                                      LinearPercentIndicator(
                                                        width: 150,
                                                        animation: true,
                                                        lineHeight: 15.0,
                                                        animationDuration: 1000,
                                                        percent: 0.8,
                                                        center: Text("80.0%", style: ISetText.captionWhite,),
                                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                                        progressColor: mainColor,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),),
                                            Center(
                                              child: RadarChart(
                                                values: [3, 2, 4, 7, 9],
                                                labels: [
                                                  "계산력",
                                                  "이해력",
                                                  "추론력",
                                                  "문제해결능력",
                                                  "응용력",
                                                ],
                                                maxValue: 10,
                                                fillColor: Colors.blueAccent,
                                                chartRadiusFactor: 0.7,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView(
                                  children: [
                                    ListTile(
                                      leading: Text('1'),
                                      title: Row(
                                        children: [
                                          Flexible(
                                            child: Container(
                                                width: 120,
                                                height: 100,
                                                child: Image.network(
                                                  'https://mir-s3-cdn-cf.behance.net/project_modules/1400/5ce32583504683.5d3ee5d2adea1.png',
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          Flexible(
                                              child: Container(
                                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0 ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '이동훈 기출문제집 2021',
                                                      style: ISetText.body,
                                                    ),
                                                    iHeightMedium,
                                                    Text(
                                                      'CH. 함수와 미적분',
                                                      style: ISetText.textSectionBlack,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      '10p. 1번 문항',
                                                      style: ISetText.textSectionBlack,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    iHeightMedium,
                                                    LinearPercentIndicator(
                                                      width: 150,
                                                      animation: true,
                                                      lineHeight: 15.0,
                                                      animationDuration: 1000,
                                                      percent: 0.8,
                                                      center: Text("80.0%", style: ISetText.captionWhite,),
                                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                                      progressColor: mainColor,
                                                    ),
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),



                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('영어'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('수학'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text('과학'),
                          ),
                        ],

                      ),
                      Column(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Table(
                                children: [
                                  TableRow(
                                      children: [
                                        Center(child: Text('문제풀이 평가', style: ISetText.body,)),
                                        Center(child: Text('방사형 그래프', style: ISetText.body,))
                                      ]
                                  ),
                                  TableRow(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              iHeightLarge,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(width: 100, child: Text('계산력')),
                                                  LinearPercentIndicator(
                                                    width: 150,
                                                    animation: true,
                                                    lineHeight: 15.0,
                                                    animationDuration: 1000,
                                                    percent: 0.8,
                                                    center: Text("80.0%", style: ISetText.captionWhite,),
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: mainColor,
                                                  ),
                                                ],
                                              ),
                                              iHeightMedium,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(width: 100, child: Text('이해력')),
                                                  LinearPercentIndicator(
                                                    width: 150,
                                                    animation: true,
                                                    lineHeight: 15.0,
                                                    animationDuration: 1000,
                                                    percent: 0.8,
                                                    center: Text("80.0%", style: ISetText.captionWhite,),
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: mainColor,
                                                  ),
                                                ],
                                              ),
                                              iHeightMedium,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(width: 100, child: Text('추론력')),
                                                  LinearPercentIndicator(
                                                    width: 150,
                                                    animation: true,
                                                    lineHeight: 15.0,
                                                    animationDuration: 1000,
                                                    percent: 0.8,
                                                    center: Text("80.0%", style: ISetText.captionWhite,),
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: mainColor,
                                                  ),
                                                ],
                                              ),
                                              iHeightMedium,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(width: 100, child: Text('문제해결능력')),
                                                  LinearPercentIndicator(
                                                    width: 150,
                                                    animation: true,
                                                    lineHeight: 15.0,
                                                    animationDuration: 1000,
                                                    percent: 0.8,
                                                    center: Text("80.0%", style: ISetText.captionWhite,),
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: mainColor,
                                                  ),
                                                ],
                                              ),
                                              iHeightMedium,
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(width: 100, child: Text('응용력')),
                                                  LinearPercentIndicator(
                                                    width: 150,
                                                    animation: true,
                                                    lineHeight: 15.0,
                                                    animationDuration: 1000,
                                                    percent: 0.8,
                                                    center: Text("80.0%", style: ISetText.captionWhite,),
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: mainColor,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),),
                                        Center(
                                          child: RadarChart(
                                            values: [3, 2, 4, 7, 9],
                                            labels: [
                                              "계산력",
                                              "이해력",
                                              "추론력",
                                              "문제해결능력",
                                              "응용력",
                                            ],
                                            maxValue: 10,
                                            fillColor: Colors.blueAccent,
                                            chartRadiusFactor: 0.7,
                                          ),
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            ),
                          ),




                        ],
                      ),


                    ]
                  ),

                ),
              )
            ),
          )

        ],
      ),
    );
  }

}



