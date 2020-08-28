class TestModel {
  String id;
  String paragraph;

  TestModel(this.id, this.paragraph);

  factory TestModel.fromJson(dynamic json) {
    return TestModel(json['id'] as String, json['paragraph'] as String);
  }

  @override
  String toString() {
    return '{ ${this.id}, ${this.paragraph} }';
  }
}
