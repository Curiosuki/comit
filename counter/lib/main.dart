import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*----------------------------- Stateful 위젯 상속 ---------------------------------*/
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

//  이 위젯은 애플리케이션의 홈 페이지입니다. stateful이기 때문에 모양에 영향을주는 필드가 포함된 State객체 (아래에 정의 됨)가 있습니다.
//  이 클래스는 상태를 위한 구성입니다.
//  (1) 부모(이 경우 App widget)가 제공하는 값을 가지고 있고,
//  (2) State의 빌드 메소드에서 사용되는 값 (이 경우 title)을 보유합니다.
//  위젯 서브 클래스의 필드는 항상 "final"로 표시됩니다.

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/*----------------------------- State 객체 상속 ---------------------------------*/
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
//  setState에 대한 이 호출은 Flutter프레임워크에게 상태에서 변경된 사항이 있음을 알려주므로 업데이트 된 값을 표시할 수 있도록 아래의 빌드 메소드를 다시 실행합니다.
//  setState()를 호출하지 않고 _counter를 변경하면 빌드 메소드가 다시 호출되지 않으므로 아무 일도 일어나지 않습니다.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
//    이 메소드는 setState가 호출 될 때마다 (예 : 위의 _incrementCounter 메소드에 의해 수행됨) 다시 실행됩니다.
//    Flutter 프레임 워크는 빌드 메소드를 빠르게 재실행하도록 최적화되어 있으므로 위젯 인스턴스를 개별적으로 변경하지 않고 업데이트가 필요한 모든 것을 다시 빌드 할 수 있습니다.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
