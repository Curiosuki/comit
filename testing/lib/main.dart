import 'package:translator/translator.dart';

void main() async {
  final translator = new GoogleTranslator();

  final input = "Здравствуйте. Ты в порядке?";

  translator.translate(input, from: 'ru', to: 'en').then((s) {
    print(s);
  });
  // prints Hello. Are you okay?

  var translation = await translator.translate("Dart is very cool!", to: 'pl');
  print(translation);
  // prints Dart jest bardzo fajny!

  // prints exemplo
}





