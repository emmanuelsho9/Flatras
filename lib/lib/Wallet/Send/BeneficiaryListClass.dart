// To parse this JSON data, do
//
//     final classForCurrency = classForCurrencyFromJson(jsonString);

import 'dart:convert';

BeneficiaryListClass classForCurrencyFromJson(String str) => BeneficiaryListClass.fromJson(json.decode(str));

String classForCurrencyToJson(BeneficiaryListClass data) => json.encode(data.toJson());

class BeneficiaryListClass {
  BeneficiaryListClass({
    required this.img,
    required this.name,
  });

  String img;
  String name;

  factory BeneficiaryListClass.fromJson(Map<String, dynamic> json) => BeneficiaryListClass(
    img: json["img"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "img": img,
    "name": name,
  };
}
