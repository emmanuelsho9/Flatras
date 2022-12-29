// To parse this JSON data, do
//
//     final cardClass = cardClassFromJson(jsonString);

import 'dart:convert';

CardClass cardClassFromJson(String str) => CardClass.fromJson(json.decode(str));

String cardClassToJson(CardClass data) => json.encode(data.toJson());

class CardClass {
  CardClass({
    required this.cardImage,
    required this.cardNumber,
  });

  String cardImage;
  String cardNumber;

  factory CardClass.fromJson(Map<String, dynamic> json) => CardClass(
    cardImage: json["CardImage"],
    cardNumber: json["CardNumber"],
  );

  Map<String, dynamic> toJson() => {
    "CardImage": cardImage,
    "CardNumber": cardNumber,
  };
}
