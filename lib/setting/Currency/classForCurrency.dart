// To parse this JSON data, do
//
//     final classForCurrency = classForCurrencyFromJson(jsonString);

import 'dart:convert';

ClassForCurrency classForCurrencyFromJson(String str) => ClassForCurrency.fromJson(json.decode(str));

String classForCurrencyToJson(ClassForCurrency data) => json.encode(data.toJson());

class ClassForCurrency {
  ClassForCurrency({
    required this.unitedStatesDollarUsd,
    required this.currentExcahngeCurrency,
  });

  String unitedStatesDollarUsd;
  String currentExcahngeCurrency;

  factory ClassForCurrency.fromJson(Map<String, dynamic> json) => ClassForCurrency(
    unitedStatesDollarUsd: json["unitedStatesDollarUSD"],
    currentExcahngeCurrency: json["currentExcahngeCurrency"],
  );

  Map<String, dynamic> toJson() => {
    "unitedStatesDollarUSD": unitedStatesDollarUsd,
    "currentExcahngeCurrency": currentExcahngeCurrency,
  };
}
