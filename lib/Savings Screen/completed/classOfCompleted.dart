// To parse this JSON data, do
//
//     final classForCurrency = classForCurrencyFromJson(jsonString);

import 'dart:convert';

ClassForCompleted classForCurrencyFromJson(String str) => ClassForCompleted.fromJson(json.decode(str));

String classForCurrencyToJson(ClassForCompleted data) => json.encode(data.toJson());

class ClassForCompleted {
  ClassForCompleted({
    required this.title,
    required this.startPrice,
    required this.endPrice,
    required this.progressiveNumber,
  });

  String title;
  String startPrice;
  String endPrice;
  String progressiveNumber;

  factory ClassForCompleted.fromJson(Map<String, dynamic> json) => ClassForCompleted(
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
