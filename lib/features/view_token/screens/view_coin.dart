import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flatra/features/view_token/screens/balance.dart';
import 'package:flatra/features/view_token/screens/crypto_chart.dart';
import 'package:flatra/features/view_token/screens/crypto_chart_filter.dart';
import 'package:flatra/features/view_token/screens/description.dart';
import 'package:flatra/features/view_token/screens/stats.dart';
import 'package:flatra/features/view_token/screens/trade_now_widget.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../common_widgets/testing/Trade.dart';
import '../../buy_crypto/screens/buy_screen.dart';

class ViewCoin extends StatefulWidget {
   ViewCoin({Key? key, }) : super(key: key);


   @override
  State<ViewCoin> createState() => _ViewCoinState();
}

class _ViewCoinState extends State<ViewCoin> {
  var data = Get.arguments;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Get.back(),
            ),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${data[0].name + " Price"}",
                          style: Styles.textStyle
                              .copyWith(color: Colors.black, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              NumberFormat.simpleCurrency(name: 'NGN')
                                  .format(data[0].currentPrice),
                              style: Styles.headLineStyle2,
                            ),
                            const Gap(5),
                            Visibility(
                                visible: data[0].priceChangePercentage24H > 0,
                                child: Image.asset("assets/png/price_up.png")),
                            Visibility(
                                visible: data[0].priceChangePercentage24H < 0,
                                child:
                                    Image.asset("assets/png/price_down.png")),
                          ],
                        ),
                        Text(
                            data[0].priceChangePercentage24H.toDouble() < 0
                                ? '-'
                                    "${data[0].priceChangePercentage24H.toDouble()}%"
                                : '+'
                                    "${data[0].priceChangePercentage24H.toDouble()}%",
                            style: Styles.headLineStyle3.copyWith(
                                color: data[0]
                                            .priceChangePercentage24H
                                            .toDouble() <
                                        0
                                    ? Colors.red
                                    : Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 12))
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CachedNetworkImage(
                        imageUrl: data[0].image.toString(),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                CryptoChart(
                    lineColor: kSecondaryColor,
                    coinPrice: data[0].sparklineIn7D),
                CryptoChartFilter(
                  onPressed: () {
                    setState(() {});
                  },
                ),
                const Gap(20),
                Balance(symbol: data[0].symbol.toString()),
                const Gap(10),
                CoinStats(coin: data),
                const Gap(10),
              ],
            ),
          ),
          const Gap(30),
          Container(
            height: 80,
            width: AppLayout.getScreenWidth(),
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Minimum Amount",
                            style: Styles.textStyle
                                .copyWith(color: Colors.grey[350]),
                          ),
                          Text(
                            NumberFormat.currency(name: 'NGN').format(50000),
                            style: Styles.textStyle
                                .copyWith(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    TradeNowButton(
                      text: 'Trade',
                      press: () => showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => tradeBottomSheet()),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget tradeBottomSheet() => Container(
        height: 300,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            color: kPrimaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Gap(30),
              InkWell(
                onTap: () {
                  Get.toNamed(
                    RouteHelpers.getBuyCrypto(),
                    arguments: [data],
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.sell,
                      size: 25,
                      color: kSecondaryColor,
                    ),
                    const Gap(15),
                    Text(
                      "Buy",
                      style: Styles.textStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: const Icon(
                      Icons.sell,
                      size: 25,
                      color: kSecondaryColor,
                    ),
                  ),
                  const Gap(15),
                  Text(
                    "Sell",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_upward,
                    size: 25,
                    color: kSecondaryColor,
                  ),
                  const Gap(15),
                  Text(
                    "Receive",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_downward,
                    size: 25,
                    color: kSecondaryColor,
                  ),
                  const Gap(15),
                  Text(
                    "Send",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.swap_horizontal_circle,
                    size: 25,
                    color: kSecondaryColor,
                  ),
                  const Gap(15),
                  Text(
                    "Swap",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.money_sharp,
                    size: 25,
                    color: kSecondaryColor,
                  ),
                  const Gap(15),
                  Text(
                    "Withdraw",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const Gap(30),
            ],
          ),
        ),
      );
}



