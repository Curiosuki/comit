import 'package:flutter/material.dart';
import 'package:flutterweb/theme/i_set_color.dart';
import 'package:flutterweb/theme/i_set_text.dart';

class Tab3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          flexibleSpace: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: 'Portfolio', style: ISetText.titleWhite),
                  ],
                ),
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: black_50,
            labelColor: black_50,
            indicatorWeight: 3,
            tabs: [
              Text('App', style: ISetText.bodyWhite,),
              Text('Web', style: ISetText.bodyWhite,),
              Text('Solution', style: ISetText.bodyWhite,)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    GridTile(
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/detailpage'),
                            child: Image.asset('assets/images/app1.jpg', fit: BoxFit.cover,)),
                      footer: Container(
                          alignment: Alignment.center,
                          height: 50,
                          color: Colors.black45,
                          child: Text(''
                              '[UI Kit] Comit', style: ISetText.textSectionWhite.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    ),
                    GridTile(
                      child: Image.asset('assets/images/app2.jpeg', fit: BoxFit.cover,),
                      footer: Container(
                          alignment: Alignment.center,
                          height: 50,
                          color: Colors.black45,
                          child: Text(''
                              '[UI Kit] SpeedRunner', style: ISetText.textSectionWhite.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    ),
                    GridTile(
                      child: Image.asset('assets/images/app3.png', fit: BoxFit.cover,),
                      footer: Container(
                          alignment: Alignment.center,
                          height: 50,
                          color: Colors.black45,
                          child: Text(''
                              '[Full Package] Flutter App', style: ISetText.textSectionWhite.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    ),
                    GridTile(
                      child: Image.asset('assets/images/app4.png', fit: BoxFit.cover,),
                      footer: Container(
                          alignment: Alignment.center,
                          height: 50,
                          color: Colors.black45,
                          child: Text(''
                              '[Full Package] Company App', style: ISetText.textSectionWhite.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    ),


                  ],

                )),
            Text('dd'),
            Text('dd')
          ],
        ),
      ),
    );
  }
}
