import 'package:flutter/material.dart';
import 'package:flatra/features/home/models/coin_data.dart';

class CoinStats extends StatelessWidget {
  List<CoinData> coin;
  CoinStats({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stat(title: "High", value: coin[0].high24H.toString()),
            Container(width: 30),
            Stat(
                title: "Symbol",
                value: coin[0].symbol.toString().toUpperCase()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stat(title: "Low", value: coin[0].low24H.toString()),
            Container(width: 30),
            Stat(title: "Rank", value: coin[0].marketCapRank.toString()),
          ],
        ),
      ],
    );
  }
}

class Stat extends StatelessWidget {
  final String title;
  final String value;

  Stat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10, top: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.dividerColor,
              // color: Colors.black.withAlpha(15),
              width: 1.0,
            ),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: TextStyle(
              // color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              // color: Colors.black54,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ]),
      ),
    );
  }
}
