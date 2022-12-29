import 'dart:math';

import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/constants/common_strings.dart';
import 'package:flatra/features/home/controllers/coin_data_controller.dart';
import 'package:flatra/features/home/controllers/fav_counter_controller.dart';
import 'package:flatra/features/home/screens/widgets.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class SectionList extends StatelessWidget {
  SectionList(
      {super.key,
      required this.selected,
      required this.callback,
      required this.pageController});

  final int selected;
  final Function callback;
  final PageController pageController;

  final CoinDataController coinDataController = Get.put(CoinDataController());
  final FavCounterController favCounterController =
      Get.put(FavCounterController());

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    final infoPages = [
      Obx(
        () => favCounterController.favCoinList.length > 0
            ?
            // Text("has Data ${box.read("favList")}")
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: favCounterController.favCoinList.length,
                itemBuilder: (context, index) {
                  return CoinCard3(
                      coin: favCounterController.favCoinList[index]);
                },
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/png/clock.png")),
                  const Gap(10),
                  Text(
                    "Add a list of Tokens \nyou will like to keep an eye on.",
                    style:
                        Styles.textStyle.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(10),
                  PrimaryButtonWidget(
                      size: size * 0.5,
                      text: "Add Watchlist",
                      press: () =>
                          showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => AddTokenBottomSheet()),
                      isBorder: false)
                ],
              ),
      ),
      Obx(
        () => coinDataController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  await _refreshData();
                },
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: coinDataController.coinDataList.length,
                  itemBuilder: (context, index) {
                    return CoinCard(
                        coin: coinDataController.coinDataList[index]);
                  },
                ),
              ),
      ),
      Container(
        color: Colors.red[400],
        child: Text("info 3"),
      ),
    ];
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      itemCount: infoPages.length,
      onPageChanged: (index) => callback(index),
      itemBuilder: ((context, index) {
        return infoPages[index];
      }),
    );
  }

  Future _refreshData() async {
    await Future.delayed(const Duration(seconds: 6));
    coinDataController.checkLoading().value = true;
    coinDataController.onInit();
  }
}
