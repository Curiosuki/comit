import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GoogleTranslator translator = GoogleTranslator();

  String text = 'How are you?';

  @override
  void initState() {

    text = text;
    super.initState();
  }

  void translate (){
    translator.translate(text, to: "hi").then((output) {
      print(output);
      setState(() {
        text = output;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('translate'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              RaisedButton(
                onPressed: () {
                  translate();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
