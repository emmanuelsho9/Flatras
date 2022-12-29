// To parse this JSON data, do
//
//     final classForCurrency = classForCurrencyFromJson(jsonString);

import 'dart:convert';

ClassForActive classForCurrencyFromJson(String str) => ClassForActive.fromJson(json.decode(str));

String classForCurrencyToJson(ClassForActive data) => json.encode(data.toJson());

class ClassForActive {
  ClassForActive({
    required this.title,
    required this.startPrice,
    required this.endPrice,
    required this.progressiveNumber,
  });

  String title;
  String startPrice;
  String endPrice;
  String progressiveNumber;

  factory ClassForActive.fromJson(Map<String, dynamic> json) => ClassForActive(
    title: json["title"],
    startPrice: json["startPrice"],
    endPrice: json["endPrice"],
    progressiveNumber: json["progressiveNumber"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "startPrice": startPrice,
    "endPrice": endPrice,
    "progressiveNumber": progressiveNumber,
  };
}
