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
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../Flatra Crypto/Home/homeFlatra.dart';
import '../features/home/screens/widgets.dart';
import 'myCommentWidgets/ContainerBtnContainer.dart';

class EnterPinKeyboard extends StatelessWidget {
  const EnterPinKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    final size = AppLayout.getSize(context);
    var amount = 0.obs;
    RxDouble convertedAmount = 0.0.obs;
    final TextEditingController _pinController = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(onTap: () {
          Get.back();
        },child: Image.asset("assets/png/img_7.png", scale: 2.5,)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Input Pin", style: TextStyle(
                    fontWeight:FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [

                    // Obx(
                    //       () => Text(
                    //       NumberFormat("#,##0.00", "en_US")
                    //           .format(amount.value),
                    //       style: Styles.headLineStylel.copyWith(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.w400)),
                    // ),
                    const Gap(5),
                  ],
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
            ContainerBtn(radius: 10, Textdata: "Proceed",
              color: const Color(0xFFFFFFff),
              Boxcolor: const Color(0xFF7F23A8),
              onTap: () {
                Get.bottomSheet(SingleChildScrollView(
                  child: Container(
                    height: 467,
                    decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Stack(
                                  children: [
                                Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                                    fit: BoxFit.cover),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Gap(60),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white),
                                      child: Stack(children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Lottie.asset(
                                              "assets/lottie/119996-coffetti-ev.json",
                                              fit: BoxFit.cover),
                                        ),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Image.asset("assets/png/tick.png"))
                                      ]),
                                    ),
                                    const Gap(20),
                                    Text(
                                      "Congratulations!",
                                      style: Styles.headLineStylel.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "An Escrow invitation has beeen sent to \n"
                                          "abc@gmail.com. You will be notified as soon as the\n"
                                          "payment has been made.",
                                      style: Styles.textStyle.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Gap(16),
                                    ContainerBtn(radius: 10, Textdata: "Proceed",
                                      color: const Color(0xFFFFFFff),
                                      Boxcolor: const Color(0xFF10F2EA),
                                      onTap: () {
                                      //TODO: leave page
                                      Get.to(const HomeFlatra());
                                      },
                                    ),

                                  ],
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
