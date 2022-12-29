// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

budgetClas budgetClass(String str) => budgetClas.fromJson(json.decode(str));

String budgetCla(budgetClas data) => json.encode(data.toJson());

class budgetClas {
  budgetClas({
    required this.name,
    required  this.pending,
    required  this.date,
    required this.price,
  });

  String name;
  String pending;
  String date;
  String price;

  factory budgetClas.fromJson(Map<String, dynamic> json) => budgetClas(
    name: json["name"],
    pending: json["Pending"],
    date: json["date"],
    price: json["Price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "Pending": pending,
    "date": date,
    "Price": price,
  };
}
