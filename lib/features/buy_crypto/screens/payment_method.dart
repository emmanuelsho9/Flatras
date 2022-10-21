import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/features/buy_crypto/models/paymethodMethods.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

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
          "Payment Methods",
          style: Styles.textStyle
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Select the Credit Card \nyou Wish to Make your Purchase",
                    textAlign: TextAlign.center,
                    style: Styles.textStyle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  const Gap(30),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.vertical,
                  //   child: Column(
                  //       children: paymentMethodModel
                  //           .map((e) => PaymentMethodWidget(cardDetails: e))
                  //           .toList()),
                  // ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: paymentMethodModel.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                            onTap: () {
                              print("Hello World" + index.toString());
                            },
                            child: PaymentMethodWidget(
                                cardDetails: paymentMethodModel[index]),
                          ))
                ],
              ),
              const Gap(40),
              PrimaryButtonWidget(
                  size: size,
                  text: "Proceed",
                  press: () => Get.toNamed(
                        RouteHelpers.getCryptoEnterPin(),
                        arguments: [
                          {"amount_to_pay": 1}
                        ],
                      ),
                  isBorder: true)
            ],
          )),
    );
  }
}
