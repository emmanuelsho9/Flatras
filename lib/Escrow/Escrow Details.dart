import 'package:flatra/Escrow/siderEscrowSummary.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'payment/Payment Option.dart';

class EscrowDetails extends StatelessWidget {
  const EscrowDetails({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Text("Escrow Summary", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
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
      body: Container(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0,right: 19),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("Escrow Details", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
                const Gap(15),
                Container(
                  height: 78,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6E3FF),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    children: [
                      Gap(19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Seller Name", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF7F23A8),
                          ),),
                          Gap(149),
                          Text("Seller Name", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Seller Email", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF7F23A8),
                          ),),
                          Gap(133),
                          Text("abc@gmail.com", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),

                Container(
                  height: 78,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6E3FF),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    children: [
                      Gap(19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Amount", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF7F23A8),
                          ),),
                          Text("5,000", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Milestones", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xFF7F23A8),
                          ),),
                          Text("3", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  height: 114,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6E3FF),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Description/Information",  style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF7F23A8),
                        ),),
                        Gap(10),
                        Row(
                          children:  [
                            Container(
                              child: const Text("Tetologi. Plaresavis. Solhybrid. Grönt körfält.\n"
                                  "Fotonetik. fFil sti Reasade. Gona. Vintage.Nar. \n"
                                  "Onde. Kokana. Fidat. Bem\n"
                                  "nt.ae Refiering.", textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF7F23A8),
                                ),),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(29),
              ],
            ),
          ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 19.0),
              child: Milestones(),
            )),
            const Gap(15),

          Padding(
            padding: const EdgeInsets.only(left: 19.0,right: 19),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("Transaction Fee  ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7F23A8)
                      ),
                    ),
                    Text(" X%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Gap(41),
                ContainerBtn(radius: 10, Textdata: "Proceed",
                  color: const Color(0xFFFFFFff),
                  Boxcolor: const Color(0xFF7F23A8),
                  onTap: () {
                    Get.to(const PaymentOption());
                    },
                ),
              ],
            ),
          ),
            Expanded(child: Gap(10))

          ],
        ),
      ),


    );
  }
}
