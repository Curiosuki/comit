import 'package:flutter/material.dart';
import 'package:flutterweb/theme/i_set_size.dart';
import 'package:flutterweb/theme/i_set_text.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text('[UI Kit] Comit'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/app1.jpg'),
            iHeightLarge,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('[UI Kit] ', style: ISetText.title,),
                  Text('Comit', style: ISetText.title,),
                ],
              ),
            ),
            iDivider,


            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Table(
                border: TableBorder.all(
                    color: Colors.black26, width: 1, ),
                children: const <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Text('라이센스'), Text('1 site 1 copy'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('제공형식'), Text('독립형'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('상품명'), Text('원데이클래스 Comit'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('사용언어'), Text('flutter/dart'),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Text('제작기간'), Text('60일'),
                    ],
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
