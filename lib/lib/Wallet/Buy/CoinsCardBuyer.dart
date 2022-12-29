import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../features/home/models/coin_data.dart';
import '../../features/view_token/screens/view_coin.dart';
import '../../helpers/routes_helper.dart';
import '../../utils/styles.dart';

class CoinList extends StatelessWidget {
  const CoinList({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CoinData coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Get.to(
            ViewCoin(),
            arguments: [coin],
          );
        },


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: CachedNetworkImage(
                    imageUrl: coin.image.toString(),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                        CircularProgressIndicator(
                            value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                const Gap(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coin.name,
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Text(coin.symbol.toUpperCase(),
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    NumberFormat.simpleCurrency(name: 'NGN')
                        .format(coin.currentPrice),
                    style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12)),
                Text(
                    coin.priceChangePercentage24H.toDouble() < 0
                        ? '-' "${coin.priceChangePercentage24H.toDouble()}%"
                        : '+' "${coin.priceChangePercentage24H.toDouble()}%",
                    style: Styles.headLineStyle3.copyWith(
                        color: coin.priceChangePercentage24H.toDouble() < 0
                            ? Colors.red
                            : Colors.green,
                        fontWeight: FontWeight.normal,
                        fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
