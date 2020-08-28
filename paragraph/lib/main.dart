import 'package:flutter/material.dart';
import 'package:paragraph/text_model.dart';
import 'package:provider/provider.dart';

import 'paragraph_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParagraphScreen(),
    );
  }
}
