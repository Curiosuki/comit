import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';
import 'components/regis_textbox.dart';



class Tab9 extends StatefulWidget {
  @override
  _Tab9State createState() => _Tab9State();
}

class _Tab9State extends State<Tab9> {
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
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.edit, size: 18, color: mainColor,),
                            iWidthLarge,
                            Text(
                              '과목',
                              style: ISetText.body,
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(border: Border.all(color: black_500)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownValue1,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue1 = newValue;
                                });
                              },
                              items: <String>['국어', '영어', '수학', '과학']
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
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.edit, size: 18, color: mainColor,),
                            iWidthLarge,
                            Text(
                              '종류',
                              style: ISetText.body,
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(border: Border.all(color: black_500)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownValue2,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValue2 = newValue;
                                });
                              },
                              items: <String>['교과서', '부교재', '모의고사', '수능기출', '내신기출', '기타']
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
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '교재명',
                      hint: '',
                      minLines: 1,
                    ),
                    iHeightLarge,
                    RegisterTextBox(
                      //ctrl: ctrlExperience,
                      icon: Icon(
                        Icons.edit,
                        size: 18,
                        color: mainColor,
                      ),
                      title: '교재 이미지',
                      hint: '',
                      minLines: 1,
                    ),
                    iHeightLarge,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.edit, size: 18, color: mainColor,),
                            iWidthLarge,
                            Text(
                              '목차',
                              style: ISetText.body,
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            onPressed: () {  },
                            icon: Icon(Icons.add),
                            iconSize: 16,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: black_500
                          )
                      ),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Icon(Icons.more_vert),
                            iWidthMedium,
                            Text('새 섹션'),
                            iWidthMedium,
                            Icon(Icons.edit, size: 16, color: Colors.grey,),
                          ],
                        ),
                        children: [
                          ListTile(
                            leading: Icon(Icons.navigate_next),
                            title: Row(
                              children: [
                                Text('새 하위목차'),
                                iWidthMedium,
                                Icon(Icons.edit, size: 16, color: Colors.grey,),
                              ],
                            ),
                            trailing: Icon(Icons.add),
                          ),
                          ListTile(
                            leading: Icon(Icons.navigate_next),
                            title: Row(
                              children: [
                                Text('새 하위목차'),
                                iWidthMedium,
                                Icon(Icons.edit, size: 16, color: Colors.grey,),
                              ],
                            ),
                            trailing: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: black_500
                          )
                      ),
                      child: ExpansionTile(
                        title: Row(
                          children: [
                            Icon(Icons.more_vert),
                            iWidthMedium,
                            Text('새 섹션'),
                            iWidthMedium,
                            Icon(Icons.edit, size: 16, color: Colors.grey,),
                          ],
                        ),
                        children: [
                          ListTile(
                            leading: Icon(Icons.navigate_next),
                            title: Row(
                              children: [
                                Text('새 하위목차'),
                                iWidthMedium,
                                Icon(Icons.edit, size: 16, color: Colors.grey,),
                              ],
                            ),
                            trailing: Icon(Icons.add),
                          ),
                          ListTile(
                            leading: Icon(Icons.navigate_next),
                            title: Row(
                              children: [
                                Text('새 하위목차'),
                                iWidthMedium,
                                Icon(Icons.edit, size: 16, color: Colors.grey,),
                              ],
                            ),
                            trailing: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),





                    iHeightLarge,
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        color: mainColor,
                        onPressed: () {  },
                        child: Text('업로드', style: ISetText.bodyWhite,),

                      ),
                    )
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
                    //actionExtentRatio: 0.25,
                    child: ExpansionTile(
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
                        ListTile(
                          leading: Icon(Icons.navigate_next),
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Ch1. 집합'),
                          ),
                          subtitle: Column(
                            children: [
                              Container(
                                  child: Text('1. 집합의 정의', textAlign: TextAlign.start,),
                                  width: double.infinity,
                              ),
                              Container(
                                child: Text('2. 교집합', textAlign: TextAlign.start,),
                                width: double.infinity,
                              ),
                              Container(
                                child: Text('3. 합집합', textAlign: TextAlign.start,),
                                width: double.infinity,
                              ),
                            ],
                          ),
                        ),


                      ],
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
