import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Messages/Messages.dart';
import '../class/Budget.dart';
import '../class/all.dart';
import 'classBudget.dart';



class TransactionInfo extends StatelessWidget {
  TransactionInfo({Key? key}) : super(key: key);

  List<budgetClas> l = [
    budgetClas(name: "Wireframe Design", pending: "Ongoing", date: "23/06/2022", price: "1,000")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(Messages());
      },backgroundColor: Color(0xFF7F23A8), child: const Icon(Icons.message)),
      backgroundColor: Color(0xFFF5ECFF),
      body: ListView.builder(itemCount: l.length, itemBuilder: (context, index) {
        return Container(

          child: Padding(
            padding: const EdgeInsets.only(left: 21.0, right: 14, top: 19),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 21.0, right: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Milestone 1", style: TextStyle(
                              color: Color(0xFF7F23A8),
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                            ),),
                            InkWell(onTap: () {
                              Get.defaultDialog(
                                backgroundColor: Colors.black,
                                radius: 5,
                                content: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Mark as complete", style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14
                                      ),),
                                      Gap(16),
                                      Text("Edit Milestone", style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14
                                      ),),
                                      Gap(16),
                                      Text("Delete Milestone", style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14
                                      ),),
                                    ],
                                  ),
                                )
                              );
                            },child: Image.asset("assets/png/img_5.png", scale: 2,))

                          ],
                        ),
                        const Gap(10),
                        Row(
                          children: [
                            const Text("Name : ", style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400
                            ),),
                            Text(l[index].name, style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400
                            ),),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          children: [
                            const Text("Amount :", style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400
                            ),),

                            Text(l[index].price, style: const TextStyle(
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
                                const Text("Due Date: ", style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400
                                ),),
                                Text(l[index].date, style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(l[index].pending, style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                color: Color(0xFFFF5151)
                            ),),

                          ],
                        ),

                        const Gap(18),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle_rounded,         color:  Color(0xFF7F23A8),
                    )),
                  
                    const Text("Add Milestone")
                  ],
                ),
                const Text("NB: If the transaction exceeds the end date the funds will\n"
                "automatically be transfered to the seller except in the case\n"
                    "of dispute.", textAlign: TextAlign.start, style: TextStyle(
                  color: Color(0xFFFF0000)
                ),)
              ],
            ),
          ),
        );
      },),
    );
  }
}
