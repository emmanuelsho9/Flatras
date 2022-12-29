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

import 'Pages/All.dart';


class HistoryTapPage extends StatelessWidget {
  HistoryTapPage(
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
      Container(

        color: const Color(0xFFF5ECFF),
        child: All(),
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
