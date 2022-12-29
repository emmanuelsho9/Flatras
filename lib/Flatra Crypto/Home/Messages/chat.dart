import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Budget/classBudget.dart';
import '../Messages/Messages.dart';
import '../class/Budget.dart';
import '../class/all.dart';
import 'bryanClass.dart';
import 'chatClass.dart';
import 'chatFeature.dart';



class chat extends StatelessWidget {
  chat({Key? key}) : super(key: key);

  List<chatC> l = [
    chatC(msg: "Hi, how’s the progressso far", time: "10:00am"),
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
                  Row(
                    children: [
                      Text(l[index].msg),
                    ],
                  ),
                ],
              ),
            ),
          );
        },),
    );
  }
}
