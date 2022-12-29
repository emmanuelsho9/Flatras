import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../Wallet/wallet.dart';
import '../../setting/VerifyIdentity/VerifyIdentity.dart';
import 'Fixed Deposit.dart';
import 'ListOfActiveClass.dart';
import 'Quick Deposit.dart';
import 'SettingsActivity.dart';
import 'WithdrawActiviteandComplete/WithdrawActiviteandComplete.dart';

class HistoryActivit extends StatelessWidget {
   HistoryActivit({Key? key, required this.title, required this.progressiveNumber,
     required this.startPrice, required this.endPrice}) : super(key: key);

   String title ="";
   String progressiveNumber ="";
   String startPrice ="";
   String endPrice ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Get.back();
        },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(onPressed: (){
            Get.to(settingActive());
          },
              icon: const Icon(Icons.settings)),        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width*1,
          height: MediaQuery.of(context).size.height*1,
          child: Column(
            children: [
              Container(
                height: 130,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                  child: Column(
                    children: [
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(title,
                             style: const TextStyle(
                             fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white
                           ),
                           ),
                           Text("${progressiveNumber}%",style: const TextStyle(
                               fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white
                           ),
                           ),

                         ],
                       ),
                      const SizedBox(height: 8,),
                      StepProgressIndicator(
                        totalSteps: 100,
                        currentStep:int.parse(progressiveNumber),
                        size: 8,
                        padding: 0,
                        selectedColor: const Color(0xFF10F2EA),
                        unselectedColor: const Color(0xFFDADADA),
                        roundedEdges: const Radius.circular(10),

                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(startPrice,style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white
                          ),
                          ),
                          Text(endPrice, style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white
                          ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140.0, right: 140, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap: () {
                      Get.to(const WithdrawActiviteandComplete());
                    },child: WalletIconForBuy(img: "assets/images/img_15.png", title: "Withdraw")),
                    InkWell(onTap: () {
                      Get.bottomSheet(BottomSheet(onClosing: () {

                      },backgroundColor: Colors.transparent, builder: (context) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFF7F23A8),
                            borderRadius: BorderRadius.circular(28)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(FixedDeposit());
                                    },
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset("assets/png/img_11.png", scale: 2,),
                                            Gap(12)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text("Fixed Deposit", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w600),),
                                            Text("Manually withdraw money from your assigned\n"
                                                "wallet", textAlign: TextAlign.start, style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w600),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(18),
                                  InkWell(
                                    onTap: () {
                                      Get.to( QuickDeposit());
                                    },
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset("assets/png/img_12.png", scale: 2,),
                                            const Gap(12)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text("Quick Deposit", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w600),),
                                            Text("Fixed Deposit automatically withdraws money\n"
                                                "from your assigned wallet", textAlign: TextAlign.start, style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w600),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },));
                    },child: WalletIconForBuy(img: "assets/images/img_16.png", title: "Deposit")),

                  ],
                ),
              ),



      ],
          ),
        ),
      ),
    );
  }
}
