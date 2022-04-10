// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.regNo,
    required this.fName,
    required this.lName,
    required this.discipline,
    required this.image,
    required this.password,
  });

  String regNo;
  String fName;
  String lName;
  String discipline;
  String image;
  String password;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        regNo: json["regNo"],
        fName: json["fName"],
        lName: json["lName"],
        discipline: json["discipline"],
        image: json["image"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "regNo": regNo,
        "fName": fName,
        "lName": lName,
        "discipline": discipline,
        "image": image,
        "password": password,
      };
}
