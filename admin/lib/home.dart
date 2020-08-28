import 'package:admin/designs.dart';
import 'package:admin/postboard.dart';
import 'package:admin/dashboard.dart';
import 'package:admin/members.dart';
import 'package:admin/settings.dart';
import 'package:admin/theme/i_set_size.dart';
import 'package:admin/theme/i_set_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    Dashboard(),
    Members(),
    Settings(),
    Designs(),
    PostBoard(),
    PostBoard(),

  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xff2A3F54),
          width: 230,
          child: Drawer(child: Column (
              children: <Widget>[
                Container(
                  color: Color(0xff2A3F54),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image.network(
                          "https://i1.wp.com/www.logoworks.com/blog/wp-content/uploads/2017/06/Untitled-2.png?zoom=2&resize=640%2C360&ssl=1",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      iHeightMedium,
                      Text('StarBucks Company', style: ISetText.bodyWhite,),

                    ],
                  )
                ),
                Expanded(
                  child: Container(
                    color: Color(0xff2A3F54),
                    child: ListView(
                     children: [
                       ListTile(
                         leading: const Icon(Icons.dashboard, color: Color(0xffE7E7E7),),
                         title: Text('대쉬보드', style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,),),
                         onTap: () {
//                      HomePage();
                           setState(() {
                             _currentPage = 0;
                           });
                         },
                       ),
                       ListTile(
                         leading: const Icon(Icons.people, color: Color(0xffE7E7E7)),
                         title: Text('회원관리',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                         onTap: () {
                           setState(() {
                             _currentPage = 1;
                           });
                         },
                       ),
                       ExpansionTile(
                         leading: const Icon(Icons.attach_money, color: Color(0xffE7E7E7)),
                         title: Text('결제관리',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                         children: [
                           ListTile(
                             leading: const Icon(Icons.arrow_right, color: Color(0xffE7E7E7)),
                             title: Text('결제장부관리',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                             onTap: () {
                               setState(() {
                                 _currentPage = 4;
                               });
                             },
                           ),
                           ListTile(
                             leading: const Icon(Icons.arrow_right, color: Color(0xffE7E7E7)),
                             title: Text('포인트장부관리',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                             onTap: () {
                               setState(() {
                                 _currentPage = 4;
                               });
                             },
                           ),
                           ListTile(
                             leading: const Icon(Icons.arrow_right, color: Color(0xffE7E7E7)),
                             title: Text('PG사 결제환경설',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                             onTap: () {
                               setState(() {
                                 _currentPage = 4;
                               });
                             },
                           ),
                         ],
                       ),
                       ListTile(
                         leading: const Icon(Icons.notification_important, color: Color(0xffE7E7E7),),
                         title: Text('공지관리', style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,),),
                         onTap: () {
//                      HomePage();
                           setState(() {
                             _currentPage = 3;
                           });
                         },
                       ),
                       ListTile(
                         leading: const Icon(Icons.show_chart, color: Color(0xffE7E7E7)),
                         title: Text('통계현황',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                         onTap: () {
//                      HomePage();
                           setState(() {
                             _currentPage = 4;
                           });
                         },
                       ),
                       ExpansionTile(
                         leading: const Icon(Icons.settings, color: Color(0xffE7E7E7)),
                         title: Text('환경설정',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                         children: [
                           ListTile(
                             leading: const Icon(Icons.chevron_right, color: Color(0xffE7E7E7)),
                             title: Text('기본정보',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                             onTap: () {
                               setState(() {
                                 _currentPage = 2;
                               });
                             },
                           ),
                           ListTile(
                             leading: const Icon(Icons.chevron_right, color: Color(0xffE7E7E7)),
                             title: Text('디자인관리',style: TextStyle(color: Color(0xffE7E7E7), fontSize: 14,) ),
                             onTap: () {
//                      HomePage();
                               setState(() {
                                 _currentPage = 3;
                               });
                             },
                           ),

                         ],
                       ),


                     ],
               ),
                  ),
                )
              ],
            ),
          ),
        ),

        Expanded(
          child: Scaffold(
            appBar: AppBar(
              elevation: 3,
              automaticallyImplyLeading:
              MediaQuery.of(context).size.width < 600,
              title: Text('관리자 페이지', style: ISetText.title,),
              actions: <Widget>[IconButton(
                icon: const Icon(Icons.exit_to_app, color: Color(0xff2A3F54),),
                tooltip: 'Logout',
                onPressed: () {
                },
              ),],
            ),
            body: _pages[_currentPage],
          ),
        ),
      ],
    );
  }
}
