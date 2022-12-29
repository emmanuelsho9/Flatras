import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../setting/Appearance/Appearance.dart';

class PurchaseSmmary extends StatelessWidget {
   PurchaseSmmary({Key? key}) : super(key: key);

   var data = Get.arguments;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text("Appearance", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                InkWell(onTap: () {
                },child: Text("Hello ${data.toString()}"))
              ],
            ),
          ),
        ),)

    );
  }
}
