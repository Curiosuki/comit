import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

Future<bool> hijack_get(String id) async {
  final filepath = 'data/$id.html';

  if (File(filepath).existsSync()) {
    print('file exists $id');
    return false;
  }

  print('get $id');

  final url = "http://bigdata.hijack7.co.kr/pro/_ori_list.php?id=$id";

  final resp = await http.get(url);

  if (resp.statusCode == 200) {
    final body = resp.body;

    File(filepath).writeAsStringSync(body);
  }
  return true;
}

Future<bool> hijack_analyze(String id) async {
  final filepath = 'data/$id.html';

  if (!File(filepath).existsSync()) {
    print('file not exists $id');
    return false;
  }
  final body = File(filepath).readAsStringSync();

  var document = parse(body);
  // print(document.outerHtml);
  final elements = document.getElementsByTagName('textarea');

  for (final element in elements) {
    print(element.innerHtml);
  }

  final inputs = document.getElementsByTagName('input');

  for (final input in inputs) {
    if (input.attributes['type'] == 'hidden') continue;
    print(input.attributes['value']);
  }

  return true;
}

