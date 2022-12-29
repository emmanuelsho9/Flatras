import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/custom_widgets.dart';
import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../utils/styles.dart';
import '../models/paymethodMethods.dart';
import 'enter_pin_screen.dart';

class PaymentMethod extends StatelessWidget {
   PaymentMethod({Key? key,


   }) : super(key: key);



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
              ContainerBtn(radius: 10, onTap: () {
                Get.to(EnterPinScreen());
              },color: Colors.white, Textdata: "Proceed", Boxcolor: const Color(0xFF7F23A8),)
            ],
          )),
    );
  }
}
