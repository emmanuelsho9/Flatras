// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

classOfGift allFlEsFromJson(String str) => classOfGift.fromJson(json.decode(str));

String allFlEsToJson(classOfGift data) => json.encode(data.toJson());

class classOfGift {
  classOfGift({
    required this.img,
  });

  String img;

  factory classOfGift.fromJson(Map<String, dynamic> json) => classOfGift(
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
  };
}
