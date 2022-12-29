// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

countryL countryListsFromJson(String str) => countryL.fromJson(json.decode(str));

String allFlEsToJson(countryL data) => json.encode(data.toJson());

class countryL {
  countryL({
    required this.currenyFull,
    required this.currenyShort,
  });

  String currenyFull;
  String currenyShort;

  factory countryL.fromJson(Map<String, dynamic> json) => countryL(
    currenyFull: json["currenyFull"],
    currenyShort: json["currenyShort"],
  );

  Map<String, dynamic> toJson() => {
    "currenyFull": currenyFull,
    "currenyShort": currenyShort,
  };
}
