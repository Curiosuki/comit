import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';
import 'package:onlinelectureadmin/theme/i_set_size.dart';
import 'package:onlinelectureadmin/theme/i_set_text.dart';
import 'components/avatar_button.dart';
import 'components/regis_textbox.dart';



class Tab12 extends StatefulWidget {
  @override
  _Tab12State createState() => _Tab12State();
}

class _Tab12State extends State<Tab12> {
  String dropdownValue1 = '학년';
  String dropdownValue2 = '대분류';
  String dropdownValue3 = '소분류';


  var finaldate;

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      finaldate = order;
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
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

  bool _value = false;
  bool _value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.edit, size: 18, color: mainColor,),
                      iWidthLarge,
                      Text(
                        '전체분류',
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
                        items: <String>['학년', '초등', '중등', '고등']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
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
                        items: <String>['대분류', '집합', '이차방정식', '함수']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),

                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(border: Border.all(color: black_500)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownValue3,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue3 = newValue;
                          });
                        },
                        items: <String>['소분류', '합집합', '교집합', '기타']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '시험제목',
                    hint: '제목을 넣어주세요',
                    minLines: 1,
                  ),
                  iHeightLarge,
                  RegisterTextBox(
                    //ctrl: ctrlExperience,
                    onTap: callDatePicker,
                    icon: Icon(
                      Icons.edit,
                      size: 18,
                      color: mainColor,
                    ),
                    title: '제출마감',
                    hint: finaldate == null ? '제출마감' : '$finaldate',
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
                    title: '제한시간',
                    hint: '분 단위로 제한시간을 입력해주세요.',
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
                    title: '총 문항 수',
                    hint: '총 문항 갯수를 넣어주세요.',
                    minLines: 1,
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
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ListView(
                children: [
                  Slidable(
                    actionPane: SlidableDrawerActionPane(),
                    //actionExtentRatio: 0.25,
                    child: ExpansionTile(
                      leading: Checkbox(
                        value: _value2,
                        onChanged: (bool newValue) {
                          setState(() {
                            _value2 = newValue;
                          });
                        },
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('· 시험분류:  [중등] 다항식: 다항식의 연산'),
                            iHeightMedium,
                            Text('· 시험제목:  다항식의 연산'),
                            iHeightMedium,
                            Text('· 제출마감:  2020년 6월 1일'),
                            iHeightMedium,
                            Text('· 제한시간:  25분'),
                            iHeightMedium,
                            Text('· 전체문항:  30개'),

                          ],
                        ),
                      ),
                      children: [
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                //height: 150,
                                child: Image.network(
                                  'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3fy/image/ZVM9mK2hqMeQV_dbj6rUPHHgDxM.jpeg',
                                  fit: BoxFit.cover,
                                )),
                            ListTile(
                              leading: Text('1'),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '1',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '2',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '3',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '4',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '5',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                //height: 150,
                                child: Image.network(
                                  'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3fy/image/ZVM9mK2hqMeQV_dbj6rUPHHgDxM.jpeg',
                                  fit: BoxFit.cover,
                                )),
                            ListTile(
                              leading: Text('1'),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '1',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '2',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '3',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '4',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '5',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                width: double.infinity,
                                //height: 150,
                                child: Image.network(
                                  'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3fy/image/ZVM9mK2hqMeQV_dbj6rUPHHgDxM.jpeg',
                                  fit: BoxFit.cover,
                                )),
                            ListTile(
                              leading: Text('1'),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '1',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '2',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '3',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '4',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                  Flexible(
                                    child: MaterialButton(
                                      onPressed: () {},
                                      elevation: 0.0,
                                      color: black_200,
                                      child: Text(
                                        '5',
                                      ),
                                      padding: EdgeInsets.all(4.0),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
          ),
          iVerticalDivider,
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
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
                        hintText: '학생이름으로 검색해주세요',
                        hintStyle: TextStyle(color: mainColor),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Checkbox(
                            value: _value,
                            onChanged: (bool newValue) {
                              setState(() {
                                _value = newValue;
                              });
                            },
                          ),
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
                                child: Text('010-0000-0000'),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.send, color: mainColor),),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
