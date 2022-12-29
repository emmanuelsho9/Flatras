import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Wallet/Send/Send Crypto.dart';
import '../myCommentWidgets/ContainerBtnContainer.dart';
import '../myCommentWidgets/EditTextMyOwn.dart';

class anoterTrade extends StatelessWidget {
   anoterTrade({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: sendCrypto()),
          Text("data"),
          Flexible(
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFF10F2EA),
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(child: IconButton(onPressed: (){
                  Get.bottomSheet(SingleChildScrollView(
                    child: Container(
                      height: 467,
                      decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Add Beneficiary",
                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                    ],
                                  ),
                                  const Gap(50),
                                  const Text("Recipient Wallet Address",
                                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                                  const Gap(7),
                                  EditTextMyOwn(Boardcolor: Color(0xFF7F23A8), obscureText: false,
                                    height: 50,hintText: "0xF2AA65753e97464380CE9578C2559b4dEb630df9",),
                                  const Gap(162),


                                  ContainerBtn(radius: 10, Textdata: "Add Beneficiary",
                                    color: const Color(0xFFFFFFff),
                                    Boxcolor: Colors.grey,
                                    onTap: () {
//TODO: leave page
                                    },
                                  ),

                                ]),
                          ],
                        ),

                      ),
                    ),
                  ),
                  );

                }, icon: const Icon(Icons.add, color: Colors.white,)))),
          ),
        ],
      ),
    );
  }
}
