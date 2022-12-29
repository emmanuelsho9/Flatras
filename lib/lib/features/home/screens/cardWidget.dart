import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({Key? key, required this.cards}) : super(key: key);

  Map<String, dynamic> cards;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      height: AppLayout.getHeight(130),
      width: AppLayout.getScreenWidth() * 0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: Stack(children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("${cards['image']}"), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(14)),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.2,
                      0.85
                    ],
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black,
                    ]),
                borderRadius: BorderRadius.circular(14)),
          ),
        ),
        Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${cards['title']}",
                  style: Styles.headLineStyle3.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "${cards['subtitle']}",
                  style: Styles.headLineStyle3.copyWith(
                      color: kSecondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ))
      ]),
    );
  }
}
