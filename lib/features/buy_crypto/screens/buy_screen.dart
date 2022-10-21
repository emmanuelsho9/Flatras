import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/common_widgets/numerical_pad.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BuyCrytoScreen extends StatelessWidget {
  const BuyCrytoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    final size = AppLayout.getSize(context);
    var amount = 0.obs;
    RxDouble convertedAmount = 0.0.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Get.back(),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Enter Amount",
          style: Styles.textStyle
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "1 ${data[0][0].name} = ${NumberFormat.currency(name: 'NGN').format(data[0][0].currentPrice)} ",
                    style: Styles.textStyle
                        .copyWith(color: kPrimaryColor, fontSize: 18)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Obx(
                      () => Text(
                          NumberFormat("#,##0.00", "en_US")
                              .format(amount.value),
                          style: Styles.headLineStylel.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ),
                    const Gap(5),
                    Text("NGN",
                        style: Styles.textStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.w800))
                  ],
                ),
                Obx(
                  () => Text(
                      '${convertedAmount.value} ' +
                          data[0][0].symbol.toUpperCase(),
                      style: Styles.textStyle.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w400)),
                ),
                const Gap(30),
                NumericPad(onNumberSelected: (value) {
                  if (amount.toInt() != 0 &&
                      amount.toInt() <= 99000000 &&
                      value != "cancel" &&
                      value != "backspace") {
                    var currentValue = amount.value;
                    int pow = 10;
                    while (int.parse(value) >= pow) {
                      pow *= 10;
                    }
                    amount.value = currentValue * pow + int.parse(value);
                    convertedAmount.value =
                        (amount.value / data[0][0].currentPrice)
                            .toDouble()
                            .toPrecision(8);
                  } else if (value == "backspace") {
                    var currentValue = amount.value;
                    String newValue = currentValue
                        .toString()
                        .substring(0, currentValue.toString().length - 1);
                    if (newValue == "") {
                      newValue = "0";
                    }
                    amount.value = int.parse(newValue);
                    convertedAmount.value =
                        (amount.value / data[0][0].currentPrice)
                            .toDouble()
                            .toPrecision(8);
                  } else if (value == 'cancel') {
                    amount.value = 0;
                    convertedAmount.value = 0;
                  } else {
                    amount.value = int.parse(value);
                    convertedAmount.value =
                        (amount.value / data[0][0].currentPrice)
                            .toDouble()
                            .toPrecision(8);
                  }
                }),
              ],
            ),
            PrimaryButtonWidget(
                size: size,
                text: "Proceed",
                press: () => Get.toNamed(
                      RouteHelpers.getCryptoPaymentMethod(),
                      arguments: [
                        {"amount_to_pay": amount}
                      ],
                    ),
                isBorder: true)
          ],
        ),
      ),
    );
  }
}
