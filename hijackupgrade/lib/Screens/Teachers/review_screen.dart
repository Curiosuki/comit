import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hijackupgrade/Themes/i_set_spacing.dart';
import 'package:hijackupgrade/Widgets/i_Form_Box.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            // OnPressed 함수에 넣기
            context,
            MaterialPageRoute(builder: (context) => WriteScreen()),
          );
        },
        icon: Icon(Icons.edit),
        label: Text('수강후기 남기기'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('review').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  final item = snapshot.data.documents[index];
                  return ExpansionTile(
                    tilePadding: EdgeInsets.all(8),
                    childrenPadding: EdgeInsets.all(8),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://mblogthumb-phinf.pstatic.net/MjAyMDAzMjlfMzkg/MDAxNTg1NDA4ODEzMzI2.TgYHw1rfLOzhNud2l1TQnYpBWO2C5s9gaILeSU07HLIg.jni1H76nFFFoYqBEzRZDccNAV8uLzzcxhtsvxqN7QCIg.PNG.tarkyami/%ED%95%9C%EC%86%8C%ED%9D%AC28.png?type=w800'),
                    ),
                    title: Text(item['title']),
                    children: [Text(item['content'])],
                  );
                });
          }
        },
      ),
    );
  }
}

class WriteScreen extends StatefulWidget {
  @override
  _WriteScreenState createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  var title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('후기 남기기'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.save),
        label: Text('저장'),
        onPressed: () async {
          await Firestore.instance
              .collection('review')
              .add({'title': title, 'content': content});

          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            IFormBox(
              hintText: '제목',
              onChanged: (text) => title = text,
              maxLines: 1,
            ),
            iHeight16,
            IFormBox(
              hintText: '내용',
              onChanged: (text) => content = text,
              minLines: 15,
            ),
          ],
        ),
      ),
    );
  }
}
