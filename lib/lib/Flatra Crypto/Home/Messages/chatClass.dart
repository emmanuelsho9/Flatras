// To parse this JSON data, do
//
//     final allFlEs = allFlEsFromJson(jsonString);

import 'dart:convert';

chatC chhatClass(String str) => chatC.fromJson(json.decode(str));

String budgetCla(chatC data) => json.encode(data.toJson());

class chatC {
  chatC({
    required this.msg,
    required this.time,
  });

  String time;
  String msg;

  factory chatC.fromJson(Map<String, dynamic> json) => chatC(
    time: json["time"],
    msg: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "time": time,
    "img": msg,
  };
}
