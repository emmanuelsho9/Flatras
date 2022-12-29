import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Budget/classBudget.dart';
import '../Messages/Messages.dart';
import '../class/Budget.dart';
import '../class/all.dart';
import 'bryanClass.dart';
import 'chatFeature.dart';



class Bryan extends StatelessWidget {
  Bryan({Key? key}) : super(key: key);

  List<bryanCl> l = [
    bryanCl(name: "Bryan", disc: "The Shipment has been delivered", time: "11:00am", number: "2", img: "assets/png/img_10.png"),
    bryanCl(name: "David", disc: "The Shipment has been delivered", time: "11:00am", number: "2", img: "assets/png/img_10.png"),
    bryanCl(name: "Bryan", disc: "The Shipment has been delivered", time: "11:00am", number: "2", img: "assets/png/img_10.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5ECFF),
      body: ListView.builder(itemCount: l.length,
        itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 21.0, right: 14, top: 19),
            child: Column(
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Get.to( chatFeature());

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(25),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:Colors.black,
                                radius: 25,
                                child: Image.asset(l[index].img, scale: 1.5,),

                              ),
                              const Gap(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(l[index].name,
                                    style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w600
                                  ),),
                                  const Gap(4),
                                  Text(l[index].disc,
                                    style: const TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFFB8B0B0)
                                  ),),
                                ],
                              ),
                              const Gap(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(l[index].time,
                                    style: const TextStyle(
                                      fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)
                                  ),),
                                  Gap(15),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF7F23A8),
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: Center(
                                      child: Text(l[index].number,
                                        style: const TextStyle(
                                          fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          const Gap(18),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },),
    );
  }
}
