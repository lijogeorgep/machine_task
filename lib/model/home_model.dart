import 'dart:convert';

List<HomeScreenModel> homeScreenModelFromJson(String str) =>
    List<HomeScreenModel>.from(
        json.decode(str).map((x) => HomeScreenModel.fromJson(x)));

String homeScreenModelToJson(List<HomeScreenModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeScreenModel {
  HomeScreenModel({
    this.title,
    this.body,
  });

  String? title;
  String? body;

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) =>
      HomeScreenModel(
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
      };
}
