import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/components/avatar_button.dart';
import 'package:onlinelectureadmin/theme/i_set_color.dart';


class Tab8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  hintText: '선생님 이름으로 검색해주세요',
                  hintStyle: TextStyle(color: mainColor),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ExpansionTile(
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
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('2'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar2.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('3'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar3.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('4'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar4.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('5'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar5.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('6'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar6.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Text('7'),
                    title: Row(
                      children: [
                        AvatarButton(
                          radius: 25,
                          avatarUrl: 'assets/images/avatar7.jpg',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('김수빈'),
                        ),
                      ],
                    ),
                    children: [
                      Row(
                        children: [
                          Text('· 성별: '),
                          Text('여자'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 생년월일: '),
                          Text('2000년 1월 1일'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 관리지점: '),
                          Text('수원 매탄점'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 전화번호: '),
                          Text('010-0000-0000'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('· 수강등록: '),
                          Text('2020년 1월 1일'),
                        ],
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
