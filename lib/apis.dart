class ApiModel {
  int id;
  String title;
  String body;

  ApiModel({
    this.id, 
    this.title,
    this.body,
  });

  factory ApiModel.fromJson(Map<String, dynamic> parsedJson) {
    return ApiModel(
      id: parsedJson['id'],
      title: parsedJson['title'],
      body: parsedJson['body'],
    );
  }
}