// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

terms termsClass(String str) => terms.fromJson(json.decode(str));

String termToJson(terms data) => json.encode(data.toJson());

class terms {
  terms({
    required this.Quantity,
    required this.Category,
    required  this.Freelance,
    required  this.name,
    required  this.email,
    required this.info,
  });

  String Quantity;
  String Category;
  String Freelance;
  String name;
  String email;
  String info;

  factory terms.fromJson(Map<String, dynamic> json) => terms(
    Quantity: json["Quantity"],
    name: json["name"],
    Category: json["Category"],
    Freelance: json["Freelance"],
    email: json["Email"],
    info: json["Info"],
  );

  Map<String, dynamic> toJson() => {
    "Quantity": Quantity,
    "name": name,
    "Category": Category,
    "Freelance": Freelance,
    "Email": email,
    "Info": info,
  };
}
