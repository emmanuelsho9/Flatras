import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Budget.dart';
import 'all.dart';

class AllPage extends StatelessWidget {
   AllPage({Key? key}) : super(key: key);

  List<AllFlEs> l = [
    AllFlEs(buyer: "buyer", name: "Peter Sukuyomi",
        pending: "pending", date: "30/4/2022",
        seller: "seller", price: "N2,400,000", todate: "10/5/2022"),
    AllFlEs(buyer: "buyer", name: "Peter Sukuyomi",
        pending: "pending", date: "30/4/2022",
        seller: "seller", price: "N2,400,000", todate: "10/5/2022"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: l.length, itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            onTap: () {
              Get.to(Budget(),
              arguments: [
                AllFlEs(buyer: "buyer", name: "name", pending: 'pending', date: "date", todate: "todate", seller: "seller", price: "price")
              ]);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 21.0, right: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(l[index].buyer, style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400
                      ),),
                      Image.asset("assets/png/img_5.png", scale: 2,)
                    ],
                  ),
                  const Gap(26),
                  Text(l[index].price, style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 24
                  ),),
                  const Gap(3),
                  Text(l[index].name),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                         children: [
                          const Icon(Icons.remove_circle, color: Color(0xFFF5EC1F),),
                          Text(l[index].pending, style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(l[index].date, style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400
                          ),),
                          const Icon(Icons.remove_sharp),
                          Text(l[index].todate, style: const TextStyle(
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
        );
      },),
    );
  }
}
