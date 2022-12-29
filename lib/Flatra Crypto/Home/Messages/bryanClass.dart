// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

bryanCl bryanClass(String str) => bryanCl.fromJson(json.decode(str));

String budgetCla(bryanCl data) => json.encode(data.toJson());

class bryanCl {
  bryanCl({
    required this.name,
    required  this.disc,
    required  this.time,
    required this.number,
    required this.img,
  });

  String name;
  String disc;
  String time;
  String number;
  String img;

  factory bryanCl.fromJson(Map<String, dynamic> json) => bryanCl(
    name: json["name"],
    disc: json["disc"],
    time: json["time"],
    number: json["number"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "disc": disc,
    "time": time,
    "number": number,
    "img": img,
  };
}
