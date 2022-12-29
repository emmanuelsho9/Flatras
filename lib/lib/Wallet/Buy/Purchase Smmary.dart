import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/custom_widgets.dart';
import '../../../utils/styles.dart';
import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../features/buy_crypto/models/paymethodMethods.dart';
import '../../features/buy_crypto/screens/payment_method.dart';


class PurchaseSmmaryT extends StatelessWidget {
  PurchaseSmmaryT({Key? key,
    required this.amountNow,
    required this.coinName,
    required this.Value,

  }) : super(key: key);

  var Adata = Get.arguments;
  String amountNow;
  String coinName;
  String Value;

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
          "Purchase Smmary",
          style: Styles.textStyle
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6E3FF),
                      borderRadius: BorderRadius.circular(5)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12),
                      child: Column(children:  [
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Token", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                                color: Color(0xFF7F23A8)),),
                            Text(coinName.toString(), style:
                            const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Amount", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                                color: Color(0xFF7F23A8)),),
                            Text("N$amountNow", style:
                            const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Value", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                                color: Color(0xFF7F23A8)),),
                            Text(Value.toString(), style:
                            const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Transaction Fee", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                                color: Color(0xFF7F23A8)),),
                            Text( "0.00", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          ],
                        ),
                        const Gap(20),

                      ],),
                    ),
                  ),

                


                ],
              ),
              const Gap(10),
              Column(
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF6E3FF),
                      borderRadius: BorderRadius.circular(5)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12),
                      child: Column(children:  [
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Total Amount", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                                color: Color(0xFF7F23A8)),),
                            Text( "0.00", style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                                color: Colors.black),),
                          ],
                        ),
                        const Gap(20),

                      ],),
                    ),
                  ),




                ],
              ),
              const Gap(59),
              ContainerBtn(radius: 10, Textdata: "Place bid",
                Boxcolor: Color(0xFF7F23A8),color: Colors.white,
              onTap: () {
                Get.to(PaymentMethod());
              },
              )
            ],
          )),
    );
  }
}
