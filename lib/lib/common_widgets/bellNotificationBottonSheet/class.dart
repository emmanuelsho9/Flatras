// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

nofity notifyFromJson(String str) => nofity.fromJson(json.decode(str));

String allFlEsToJson(nofity data) => json.encode(data.toJson());

class nofity {
  nofity({
    required this.order,
    required this.delivered,
    required  this.min,
  });

  String order;
  String delivered;
  String min;

  factory nofity.fromJson(Map<String, dynamic> json) => nofity(
    order: json["order"],
    delivered: json["delivered"],
    min: json["min"],

  );

  Map<String, dynamic> toJson() => {
    "order": order,
    "delivered": delivered,
    "min": min,

  };
}
