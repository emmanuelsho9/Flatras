import 'package:flatra/constants/common_strings.dart';
import 'package:flatra/features/home/controllers/coin_data_controller.dart';
import 'package:flatra/features/home/controllers/fav_counter_controller.dart';
import 'package:flatra/features/home/models/coin_data.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: Styles.textStyle.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "Oluwaseun",
              style: Styles.textStyle.copyWith(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(14)),
          child: Icon(Icons.notifications, color: Colors.white),
        )
      ],
    );
  }
}

class dotIndicator extends StatelessWidget {
  const dotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 7 : 7,
      width: isActive ? 28 : 7,
      decoration: BoxDecoration(
          color: isActive ? Colors.purple : Colors.grey[500],
          borderRadius: BorderRadius.all(const Radius.circular(12))),
    );
  }
}

class CoinCard extends StatelessWidget {
  const CoinCard({
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
          Get.toNamed(
            RouteHelpers.getViewCoinDetails(),
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
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Text(coin.symbol.toUpperCase(),
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.black,
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
                        color: Colors.black,
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

class CoinCard3 extends StatelessWidget {
  FavCounterController favCounterController = Get.put(FavCounterController());
  CoinCard3({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CoinData coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: CachedNetworkImage(
                  imageUrl: coin.image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
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
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  Text(coin.symbol.toUpperCase(),
                      style: Styles.headLineStyle3.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14)),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      NumberFormat.simpleCurrency(name: 'NGN')
                          .format(coin.currentPrice),
                      style: Styles.headLineStyle3.copyWith(
                          color: Colors.black,
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
              ),
              const Gap(10),
              InkWell(
                  onTap: () {
                    favCounterController.removeFavCoinFromList(coin.symbol);
                  },
                  child: Icon(
                    Icons.cancel_rounded,
                    size: 30,
                    color: kPrimaryColor,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class CoinCard2 extends StatelessWidget {
  const CoinCard2({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CoinData coin;

  @override
  Widget build(BuildContext context) {
    final FavCounterController favCounterController =
        Get.put(FavCounterController());
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
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
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
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
          InkWell(
            onTap: () {
              favCounterController.addFavCoinToList(coin.symbol);
            },
            child: Text(
              "Add",
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class AddTokenBottomSheet extends StatelessWidget {
  AddTokenBottomSheet({super.key});
  final CoinDataController coinDataController = Get.put(CoinDataController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          color: kPrimaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            const Gap(30),
            Text(
              "Select a Token",
              style: Styles.textStyle
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            const Gap(10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 4, right: 4),
                child: TextField(
                  onChanged: (value) =>
                      coinDataController.getFilteredCoinData(value),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a Token name...',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      prefixIconColor: Colors.black),
                ),
              ),
            ),
            const Gap(10),
            SizedBox(
              height: 300,
              child: Obx(
                () => coinDataController.checkLoadingFilter().isTrue
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: coinDataController.coinDataFilterList.length,
                        itemBuilder: (context, index) {
                          return CoinCard2(
                              coin:
                                  coinDataController.coinDataFilterList[index]);
                        },
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
