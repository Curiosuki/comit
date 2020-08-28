import 'package:flutter/material.dart';
import 'package:onlinelectureadmin/components/avatar_button.dart';
import 'package:onlinelectureadmin/tab1.dart';
import 'package:onlinelectureadmin/tab10.dart';
import 'package:onlinelectureadmin/tab11.dart';
import 'package:onlinelectureadmin/tab12.dart';
import 'package:onlinelectureadmin/tab2.dart';
import 'package:onlinelectureadmin/tab3.dart';
import 'package:onlinelectureadmin/tab4.dart';
import 'package:onlinelectureadmin/tab5.dart';
import 'package:onlinelectureadmin/tab6.dart';
import 'package:onlinelectureadmin/tab7.dart';
import 'package:onlinelectureadmin/tab8.dart';
import 'package:onlinelectureadmin/tab9.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('온라인강의앱 관리 프로그램'),
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: AvatarButton(
                  radius: 25,
                  avatarUrl: 'assets/images/avatar3.jpg',
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 40),
                  child: Text('권현태 선생님')
              ),
            ],
          )

        ],
      ),
      body: Container(
        child: VerticalTabs(
          selectedTabBackgroundColor: Colors.grey.withOpacity(0.2),
          indicatorWidth: 0,
          tabsWidth: 150,
          direction: TextDirection.ltr,
          contentScrollAxis: Axis.vertical,
          changePageDuration: Duration(milliseconds: 300),
          tabs: <Tab>[
            Tab(child: Container(padding: EdgeInsets.only(top: 50, left: 16, bottom: 10), child: Text('01. 기본사항', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('02. 공지사항', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('03. 메인배너', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('04. 이벤트배너', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('05. 인터뷰영상', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('06. 명예의 전당', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('07. 학생관리', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('08. 강사관리', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('09. 교재등록', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('10. 강의등록', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('11. 문제등록', style: TextStyle(fontSize: 14,),)),),
            Tab(child: Container(padding: EdgeInsets.only(bottom: 10, left: 16,), child: Text('12. 문제출제', style: TextStyle(fontSize: 14,),)),),

          ],
          contents: <Widget>[
            Tab1(),
            Tab2(),
            Tab3(),
            Tab4(),
            Tab5(),
            Tab6(),
            Tab7(),
            Tab8(),
            Tab9(),
            Tab10(),
            Tab11(),
            Tab12()
          ],
        ),
      ),
    );
  }
}
