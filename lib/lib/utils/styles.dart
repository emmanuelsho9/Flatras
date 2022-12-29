import 'package:flutter/material.dart';

class Styles {
  static Color textColor = const Color(0xFF000000);

  static Color grayColor = Colors.grey.shade500;

  static String fontFamily = "Poppins";

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStylel =
      TextStyle(fontSize: 32, color: textColor, fontWeight: FontWeight.w400);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 28, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily);

  static TextStyle buttonTextStyle = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily);

  static TextStyle headLineStyle5 = TextStyle(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily);

  static TextStyle headLineStyle6 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
