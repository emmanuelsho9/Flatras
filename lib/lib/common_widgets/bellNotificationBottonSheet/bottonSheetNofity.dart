import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'class.dart';

class BottonSheetNotify extends StatelessWidget {
   BottonSheetNotify({Key? key}) : super(key: key);

   List<nofity>n=[
     nofity(order: "Order 4411223355 Payment Received", delivered: "Please proceed to confim the delivery order", min: "23 mins ago"),
     nofity(order: "Order 4411223355 Payment Received", delivered: "Please proceed to confim the delivery order", min: "23 mins ago"),
     nofity(order: "Order 4411223355 Payment Received", delivered: "Please proceed to confim the delivery order", min: "23 mins ago"),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF7F23A8),
      body: ListView.builder(itemCount: n.length, itemBuilder: (context, index) {
        return Card(
          color: Color(0xFF7F23A8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(n[index].order, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF10F2EA)),),
              Text(n[index].delivered, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),),
              Text(n[index].min, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFFD881FF)),),
             Gap(11),
              Container(
                height: 1,
                color: Colors.white,
              ),
            ],
          ),
        );
      },),
    );
  }
}
