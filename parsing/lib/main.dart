import 'dart:io';
import 'package:http/http.dart' as http;

Future<bool> hijack_get(String id) async {
  final filepath = 'data/$id.html';

  if (File(filepath).existsSync()) {
    return false;
  }

  final url = 'http://bigdata.hijack7.co.kr/pro/_ori_list.php?id=$id';

  final resp = await http.get(url);

  if (resp.statusCode == 200) {
    final body = resp.body;
    print(body);

    File(filepath).writeAsStringSync(body);
  }

  return true;
}

void main() async {
  for (var i = 111; i < 22910; i++) {

    // 파일 받는거
//    if(await hijack_get('$i')){
//      sleep(Duration(seconds: 3));
//    }

  await hijack_analyze('$i');


  }
}
