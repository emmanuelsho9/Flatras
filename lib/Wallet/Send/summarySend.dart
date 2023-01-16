import 'package:flatra/Escrow/siderEscrowSummary.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../common_widgets/enter pin keyboard.dart';
import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../utils/styles.dart';


class SummarySend extends StatelessWidget {
  const SummarySend({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Summary", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: Column(
          children: [
            IconButton(onPressed: (){
              Get.back();
            },
                icon: const
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19.0,right: 19),
                child: Column(
                  children: [
                    const Gap(40),

                    Row(
                      children: const [
                        Text("Send Summary", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    const Gap(15),
                    const sellerNameAndEmailbuyer(),
                    const Gap(10),

                    const Gap(10),
                    const descroptionInfobuyer(),
                    const Gap(29),
                    ContainerBtn(radius: 10, Textdata: "Proceed", Boxcolor: const Color(0xFF7F23A8) ,color: Colors.white,
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
                                        ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));

                    },)
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



class descroptionInfobuyer extends StatelessWidget {
  const descroptionInfobuyer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xFFF6E3FF),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total Amount", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF7F23A8),
                ),),
                Text("0.00", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}



class sellerNameAndEmailbuyer extends StatelessWidget {
  const sellerNameAndEmailbuyer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF6E3FF),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(19),
          Text("Wallet Address", style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFF7F23A8),
          ),),
          Text("0x89b4987259b31292Db19fb55E9d8cF1E696", style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),),
          const  Gap(19),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Amount", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("N0.00", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
          const  Gap(19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Value", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("0.000 BTC", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
          const  Gap(19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Withdraw to", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("xxxx xxxx xxxx 4321", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

