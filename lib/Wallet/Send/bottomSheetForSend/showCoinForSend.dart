import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../features/home/controllers/coin_data_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/styles.dart';
import '../../Buy/CoinsCardBuyer.dart';
import 'coinCardSell.dart';


class ShowBottonSheet extends StatelessWidget {
  ShowBottonSheet({super.key});
  final CoinDataController coinDataController = Get.put(CoinDataController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
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
                      prefixIcon: const Icon(
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
                    return CoinListSell(
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
