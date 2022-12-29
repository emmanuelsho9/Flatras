// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

AllFlEs allFlEsFromJson(String str) => AllFlEs.fromJson(json.decode(str));

String allFlEsToJson(AllFlEs data) => json.encode(data.toJson());

class AllFlEs {
  AllFlEs({
    required this.buyer,
    required this.name,
    required  this.pending,
    required  this.date,
    required  this.todate,
    required this.seller,
    required this.price,
  });

  String buyer;
  String name;
  String pending;
  String date;
  String seller;
  String todate;
  String price;

  factory AllFlEs.fromJson(Map<String, dynamic> json) => AllFlEs(
    buyer: json["Buyer"],
    name: json["name"],
    pending: json["Pending"],
    date: json["date"],
    seller: json["Seller"],
    price: json["Price"],
    todate: json["Todate"],
  );

  Map<String, dynamic> toJson() => {
    "Buyer": buyer,
    "name": name,
    "Pending": pending,
    "date": date,
    "Seller": seller,
    "Price": price,
    "Todate": todate,
  };
}
