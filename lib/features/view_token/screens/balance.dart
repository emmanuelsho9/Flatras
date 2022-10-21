import 'package:flatra/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Balance extends StatefulWidget {
  const Balance({super.key, required this.symbol});

  final String symbol;

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  bool viewPrice = true;
  bool viewCoin = false;
  Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: Styles.textStyle.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Obx(
                () => Text(
                  c.priceView.value
                      ? NumberFormat.simpleCurrency(name: 'NGN')
                          .format(16000000)
                      : "0.0010033 " + widget.symbol.toUpperCase(),
                  style: Styles.headLineStyle2,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          child: InkWell(
              onTap: c.toggleView,
              child: const Image(
                  image: AssetImage("assets/png/toggle_change.png"))),
        )
      ],
    );
  }
}

class Controller extends GetxController {
  RxBool coinView = false.obs;
  RxBool priceView = true.obs;

  void toggleView() {
    if (coinView.isTrue) {
      coinView.value = false;
      priceView.value = true;
    } else {
      coinView.value = true;
      priceView.value = false;
    }
  }
}
