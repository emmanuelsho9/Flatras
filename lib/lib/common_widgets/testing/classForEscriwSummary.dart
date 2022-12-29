// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

MilestoneN Milestone(String str) => MilestoneN.fromJson(json.decode(str));

String allFlEsToJson(MilestoneN data) => json.encode(data.toJson());

class MilestoneN {
  MilestoneN({
    required this.name,
    required  this.Milestone,
    required  this.date,
    required this.price,
  });

  String name;
  String Milestone;
  String date;
  String price;

  factory MilestoneN.fromJson(Map<String, dynamic> json) => MilestoneN(
    name: json["name"],
    Milestone: json["Milestone"],
    date: json["date"],
    price: json["Price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "Milestone": Milestone,
    "date": date,
    "Price": price,
  };
}
