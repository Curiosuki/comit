import 'dart:convert';



var dict = Map<String, dynamic>();

void prepareAnalysis() {

  // read and parse json

  final d = json.decode(jsonText);

  for (final item in d['voca']) {
    print(item);
    final voca = item['voca'];
    dict[voca] = item;
  }

}

var jsonText = '''{ "voca":[
  {
    "index": 0,
    "voca": "enter",
    "meaning": "v. 들어가다",
    "synonym": "come to",
    "antonym": null,
    "similar": null,
    "derivative": "enterance n. 입구",
    "idiom": null,
    "grammar": "enter(타) 들어가다 / enter into (자) 착수하다"
  },
  {
    "index": 1,
    "voca": "however",
    "meaning": "그러나, 얼마나 ~이든지 간에",
    "synonym": "역접: however, but, still, yet, and yet, nevertheless, nonetheless",
    "antonym": "순접: so, and so, therefore, thus",
    "similar": "whatever",
    "derivative": null,
    "idiom": null,
    "grammar": "However 형/부 s + v 얼마나 ~이든지 간에 | whatever (명) s + v 무엇이든지 간에"
  },
  {
    "index": 2,
    "voca": "nor",
    "meaning": "그리고 또한 ~도 아니다",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": "부정부사가 문장 앞에 오면 도치구문이 만들어진다: nor, not only, seldom, scarcely + 조동사 + s + 본동사"
  },
  {
    "index": 3,
    "voca": "competent",
    "meaning": "a. 유능한",
    "synonym": "capable",
    "antonym": null,
    "similar": "competitive a. 경쟁적인",
    "derivative": null,
    "idiom": null,
    "grammar": null
  },
  {
    "index": 4,
    "voca": "but",
    "meaning": "그러나",
    "synonym": "역접: however, but, still, yet, and yet, nevertheless, nonetheless",
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": "but정리: (등위접속사) 그러나 / but for N ~을 제외하고"
  },
  {
    "index": 5,
    "voca": "most",
    "meaning": "a. 대부분의 / the most 가장 많은",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": "most 대부분 / the most 가장 많은, 가장 많이"
  },
  {
    "index": 6,
    "voca": "contribute",
    "meaning": "vi. 기여하다",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null, 
    "idiom": null,
    "grammar": "contribute는 자동사이므로 전치사 to와 함께 쓰인다."
  },
  {
    "index": 7,
    "voca": "moral",
    "meaning": "a. 도덕적인",
    "synonym": null,
    "antonym": "immoral",
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": null
  },
  {
    "index": 8,
    "voca": "as",
    "meaning": "(전) ~로서 (접) ~때문에, 이니깐",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": "as N ~로서, as s + v: ~이니깐, 때문에, as for/to N: ~에 관해서, as of/as from N 의 날로부터"
  },
  {
    "index": 9,
    "voca": "ride",
    "meaning": "v. (탈 것을)타다, 태움",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": null
  },
  {
    "index": 10,
    "voca": "local",
    "meaning": "a. 지방의, 지역의, 장소의",
    "synonym": null,
    "antonym": null,
    "similar": null,
    "derivative": null,
    "idiom": null,
    "grammar": null
  }

]
}''';
