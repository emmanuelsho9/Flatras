import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../payment/Bank Payment.dart';
import '../payment/Card Payement.dart';


class sellerCongratulation extends StatelessWidget {
  const sellerCongratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0,right: 19),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset("assets/images/img_25.png",scale: 2,),
              const Gap(20),
              const Text("Congratulations",
                style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24, color: Color(0xFF7F23A8)
                ),),
              const Text("An Escrow invitation has beeen sent to\n"
                  "abc@gmail.com. You will be notified as soon as the\n"
                  "payment has been made.", textAlign: TextAlign.center,
                style:  TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14, color: Color(0xFF000000)
                ),),
            ],
          ),
        ),
      ),


    );
  }
}
