import 'package:flutter/material.dart';


class StudyListScreen extends StatefulWidget {
  @override
  _StudyListScreenState createState() => _StudyListScreenState();
}

class _StudyListScreenState extends State<StudyListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스터디 그룹'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(itemBuilder: (context, index) => ListTile(
          onTap: () => Navigator.pushNamed(context, '/studyDetailScreen'),
          leading: Text('1'),
          title: Text('강남 스터디 모집'),
          subtitle: Text('ddddd'),
        )),
      ),
    );
  }
}

