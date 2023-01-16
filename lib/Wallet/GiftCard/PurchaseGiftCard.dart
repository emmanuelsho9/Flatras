import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Flatra Crypto/Home/class/Budget.dart';
import '../../Flatra Crypto/Home/class/all.dart';
import '../../utils/styles.dart';
import 'PurchaseGiftCardOpen.dart';
import 'classOfGift.dart';


class purchaseGiftCard extends StatelessWidget {
  purchaseGiftCard({Key? key}) : super(key: key);

  List<classOfGift> _l = [
    classOfGift(img: "assets/images/img_26.png"),
    classOfGift(img: "assets/images/img_27.png"),
    classOfGift(img: "assets/images/img_28.png"),
  ];


  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
       centerTitle: true,
      title: const Text("Purchase Gift Card", style: TextStyle(
        color: Colors.black
      ),),
      leading: IconButton(onPressed: (){
        Get.back();
      }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SafeArea(
        child: Container(
          height: (MediaQuery.of(context).size.height-appBar.preferredSize.height),
          child: Container(
            height: (MediaQuery.of(context).size.height-appBar.preferredSize.height),
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                const  Gap(30),
                Text(
                  "Select a Gift card amongst the\n"
                      "available templates",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const Gap(50),
                Flexible(
                  child: ListView.builder(itemCount: _l.length, itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: InkWell(
                            onTap: () {
                              Get.to(PurchaseGiftCardOpen(image: _l[index].img,));
                            },
                            child: Image.asset(_l[index].img)));
                  },),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
