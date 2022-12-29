// To parse this JSON data, do
//
//     final classOfHistroyOfTrans = classOfHistroyOfTransFromJson(jsonString);

import 'dart:convert';

ClassOfHistroyOfTrans classOfHistroyOfTransFromJson(String str) => ClassOfHistroyOfTrans.fromJson(json.decode(str));

String classOfHistroyOfTransToJson(ClassOfHistroyOfTrans data) => json.encode(data.toJson());

class ClassOfHistroyOfTrans {
  ClassOfHistroyOfTrans({
    required this.buy,
    required this.nft,
    required  this.nfTprice,
    required this.classOfHistroyOfTransCyberMob,
    required  this.amount,
    required this.amountprice,
    required this.total,
    required  this.totalPrice,
    required  this.date,
    required  this.value,
    required  this.valuePrice,
    required  this.Transactionfee,
    required  this.Transactionprice,
    required  this.cyberMobCyberMob,
    required  this.cyberMob,
  });

  String buy;
  String date;
  String valuePrice;
  String Transactionprice;
  String nft;
  String nfTprice;
  String classOfHistroyOfTransCyberMob;
  String amount;
  String amountprice;
  String value;
  String total;
  String Transactionfee;
  String totalPrice;
  String cyberMobCyberMob;
  String cyberMob;

  factory ClassOfHistroyOfTrans.fromJson(Map<String, dynamic> json) => ClassOfHistroyOfTrans(
    buy: json["Buy"],
    date: json["date"],
    Transactionprice: json["Transactionprice"],
    valuePrice: json["valuePrice"],
    value: json["value"],
    nft: json["NFT"],
    nfTprice: json["NFTprice"],
    classOfHistroyOfTransCyberMob: json["CyberMob"],
    amount: json["Amount"],
    amountprice: json["Amountprice"],
    Transactionfee: json["Transactionfee"],
    total: json["Total"],
    totalPrice: json["TotalPrice"],
    cyberMobCyberMob: json["CyberMobCyberMob"],
    cyberMob: json["Cyber Mob"],
  );

  Map<String, dynamic> toJson() => {
    "Buy": buy,
    "NFT": nft,
    "Transactionprice": Transactionprice,
    "Transactionfee": Transactionfee,
    "valuePrice": valuePrice,
    "date": date,
    "NFTprice": nfTprice,
    "CyberMob": classOfHistroyOfTransCyberMob,
    "Amount": amount,
    "Amountprice": amountprice,
    "Total": total,
    "TotalPrice": totalPrice,
    "CyberMobCyberMob": cyberMobCyberMob,
    "Cyber Mob": cyberMob,
  };
}
