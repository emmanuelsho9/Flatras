import 'package:flatra/lib/Flatra%20Crypto/Home/Budget/termclass.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Messages/Messages.dart';
import '../class/Budget.dart';
import '../class/all.dart';
import 'classBudget.dart';



class Terms extends StatelessWidget {
  Terms({Key? key}) : super(key: key);

  List<terms> l = [
    terms(Quantity: "not assigned", Category: "Service", Freelance: "Freelance", name: "Peter", email: "abc@gmail.com", info: "Gisyn. Munhota. Vynar. Behysm. Spening. Kadade. Posede. Beling. Cynstik. Gären. Nyss. Högår. DecismP ertad. Polygen.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(Messages());

      },backgroundColor: Color(0xFF7F23A8), child: Image.asset("assets/png/img_6.png", scale: 1.5,)),
      backgroundColor: Color(0xFFF5ECFF),
      body: ListView.builder(itemCount: l.length, itemBuilder: (context, index) {
        return Container(

          child: Padding(
            padding: const EdgeInsets.only(left: 21.0, right: 14, top: 19),
            child: Column(
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      // Get.to(Budget(),
                      //     arguments: [
                      //     ]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(25),
                          Row(
                            children: [
                              const Text("Category: ", style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400,
                                color: Color(0xFF7F23A8)
                              ),),
                              Text(l[index].Category, style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              const Text("Type of Escrow: ", style: TextStyle(
                                  color: Color(0xFF7F23A8)
                                  ,fontSize: 14, fontWeight: FontWeight.w400
                              ),),

                              Text(l[index].Freelance, style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text("Quantity: ", style: TextStyle(
                                      color: Color(0xFF7F23A8)
                                      , fontSize: 14, fontWeight: FontWeight.w400
                                  ),),
                                  Text(l[index].Quantity, style: const TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400
                                  ),),
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
                Card(
                  child: InkWell(
                    onTap: () {
                      // Get.to(Budget(),
                      //     arguments: [
                      //     ]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(25),
                          Row(
                            children: [
                              const Text("Name: ", style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400,
                                  color: Color(0xFF7F23A8)
                              ),),
                              Text(l[index].name, style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              const Text("Email ", style: TextStyle(
                                  color: Color(0xFF7F23A8)
                                  ,fontSize: 14, fontWeight: FontWeight.w400
                              ),),

                              Text(l[index].email, style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400
                              ),),
                            ],
                          ),
                          const Gap(18),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      // Get.to(Budget(),
                      //     arguments: [
                      //     ]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  const Text("Other Info: ", style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400,
                                      color: Color(0xFF7F23A8)
                                  ),),
                                  Gap(8),
                                  InkWell(
                                      onTap: () {
                                        Get.bottomSheet(SingleChildScrollView(
                                          child: Container(
                                            width: 360,
                                            height: 467,
                                            decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 23.0, right: 23, top: 32),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end ,
                                                    children: const [
                                                      Text("Edit", style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600
                                                      ),),
                                                    ],
                                                  ),
                                                  const Gap(19),
                                                  const Text("Description", style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600
                                                  ),),
                                                  const Gap(19),
                                                  Container(
                                                      width: double.infinity,
                                                      height: 228,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: TextFormField(
                                                          decoration: const InputDecoration(
                                                            border: InputBorder.none,
                                                            hintText: "eg. abc@gmail.com"
                                                          ),
                                                        ),
                                                      )),
                                                  const Gap(19),
                                                  Container(
                                                      width: double.infinity,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFF10F2EA),
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      child: const Center(child: Text("Proceed", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 16),))
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ));
                                      },
                                      child: Image.asset("assets/png/img_8.png", scale: 2,))
                                ],
                              ),
                              const Gap(8),
                              Container(
                                width: 320,
                                child: Text(l[index].info,  textAlign: TextAlign.start, style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400
                                ),),
                              ),
                            ],
                          ),
                          const Gap(30),

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
