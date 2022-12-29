import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Bank Payment.dart';
import 'Card Payement.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Payment Option", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0,right: 19, top: 50),
          child: Column(
            children: [
              const Text("Gift Crypto to anyone you wish",
                style:  TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16
              ),),
              const Gap(33),
              InkWell(
                onTap: () {
                  Get.to(const BankPayment());

                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF7F23A8),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Bank Payment", style:  TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                onTap: () {
                  Get.to(const CardPaymentE());
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF7F23A8),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Debit Card", style:  TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
