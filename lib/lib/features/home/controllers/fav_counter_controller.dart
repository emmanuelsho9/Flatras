import 'dart:convert';
import 'package:flatra/constants/common_strings.dart';
import 'package:flatra/features/home/models/coin_data.dart';
import 'package:flatra/features/home/services/coin_data_service.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavCounterController extends GetxController {
  var favListData = [].obs;
  var favCoinList = <CoinData>[].obs;
  var favListData2 = [];

  @override
  void onInit() {
    // box.erase();
    getFavCoinList();
    super.onInit();
  }

  void addFavCoinToList(String coin) {
    if (favListData.contains(coin)) {
      Get.snackbar("Warning Message",
          "${coin.toUpperCase()} Already exists in Watchlist",
          backgroundColor: Colors.yellow.shade900,
          colorText: Colors.white,
          icon: const Icon(
            Icons.dangerous,
            size: 30,
            color: Colors.white,
          ));
    } else {
      favListData.add(coin);
      Get.snackbar(
          "Success Message", "${coin.toUpperCase()} Added Successfully",
          backgroundColor: kPrimaryColor,
          colorText: Colors.white,
          icon: const Icon(
            Icons.check_circle,
            size: 30,
            color: Colors.white,
          ));
      update();
      box.write("favListData", favListData);
    }
  }

  void removeFavCoinFromList(String coin) {
    favCoinList.remove(coin);
    Get.snackbar(
        "Success Message", "${coin.toUpperCase()} Removed Successfully",
        backgroundColor: kPrimaryColor,
        colorText: Colors.white,
        icon: Icon(
          Icons.check_circle,
          size: 30,
          color: Colors.white,
        ));
    update();
    box.write("favListData", favListData);
    print(box.read("favListData"));
    getFavCoinList();
  }

  void getFavCoinList() async {
    if (box.hasData("favListData")) {
      favListData2 = box.read('favListData');
      var coinData = await CoinDataService.getCoinData();
      if (coinData != null) {
        for (var i = 0; i < favListData2.length; i++) {
          favCoinList.value = coinData
              .where((element) =>
                  element.symbol.toString().toLowerCase() ==
                  favListData2[i].toLowerCase())
              .toList();
        }
      }
      update();
    }
    print(favCoinList);
  }
}
