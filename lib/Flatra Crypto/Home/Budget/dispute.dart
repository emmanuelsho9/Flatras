import 'package:flatra/Flatra%20Crypto/Home/Budget/termclass.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Messages/Messages.dart';
import '../class/Budget.dart';
import '../class/all.dart';
import 'classBudget.dart';



class Dispute extends StatelessWidget {
  Dispute({Key? key}) : super(key: key);

  List<terms> l = [
    terms(Quantity: "not assigned", Category: "Service", Freelance: "Freelance", name: "Peter", email: "abc@gmail.com", info: "Gisyn. Munhota. Vynar. Behysm. Spening. Kadade. Posede. Beling. Cynstik. Gären. Nyss. Högår. DecismP ertad. Polygen.")
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Dispute Type"),
                const Gap(4),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
                    ),
                  ),
                ),
                const Gap(21),
                const Text("Reason for Dispute"),
                const Gap(4),
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                    ),
                  ),
                ),
                const Gap(24),
                const Text("NB: The reason for dispute must be valid and will be reviewed\n"
                    "until a solution is reached.", textAlign: TextAlign.start, style: TextStyle(
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
