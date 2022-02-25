class TestModel {
  TestModel({
    required this.quote,
    required this.author,
  });
  late final String quote;
  late final String author;

  TestModel.fromJson(Map<String, dynamic> json){
    quote = json['quote'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['quote'] = quote;
    _data['author'] = author;
    return _data;
  }
}