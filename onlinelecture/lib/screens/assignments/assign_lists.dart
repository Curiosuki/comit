import 'package:flutter/material.dart';
import 'package:onlinelecture/theme/i_set_color.dart';
import 'package:onlinelecture/theme/i_set_string.dart';

class Assignment extends StatelessWidget {
  List<String> _tabs = ['미제출', '제출',];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        appBar: AppBar(
          title: const Text(brand_name),
          backgroundColor: mainColor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: [
            ListView(
              children: [
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/assign_omr'),
                  leading: Text('1'),
                  title: Text('다항식의 연산 1차'),
                  subtitle: Text('제출마감: 2020년 6월 1일'),
                  trailing: Text('총 30문항\n시험시간: 25분')
                ),
                ListTile(
                    onTap: () => Navigator.pushNamed(context, '/assign_omr'),
                    leading: Text('2'),
                    title: Text('다항식의 연산 2차'),
                    subtitle: Text('제출마감: 2020년 6월 1일'),
                    trailing: Text('총 30문항\n시험시간: 25분')
                ),
                ListTile(
                    onTap: () => Navigator.pushNamed(context, '/assign_omr'),
                    leading: Text('3'),
                    title: Text('다항식의 연산 3차'),
                    subtitle: Text('제출마감: 2020년 6월 1일'),
                    trailing: Text('총 30문항\n시험시간: 25분')
                ),
              ],
            ),
            Text('2')
          ],
        ),
      ),
    );
  }
}
