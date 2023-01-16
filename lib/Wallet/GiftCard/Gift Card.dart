
import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flatra/common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../Send/Send Crypto.dart';
import 'PurchaseGiftCard.dart';
import 'Redeem Gift Card.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Gift Card", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(50),
                const Text("Gift Crypto to anyone you wish",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                const Gap(33),
                ContainerBtn2(radius: 10, Textdata: "Purchase Gift Card",
                  Boxcolor: Colors.white,color: Colors.black,onTap: () {
                    Get.to(purchaseGiftCard());

                  },),
                const Gap(10),
                ContainerBtn2(onTap: () {
                  Get.to(RedeemGiftCard());
                },radius: 10, Textdata: "Redeem Gift Card", Boxcolor: Colors.white,color: Colors.black,),
                const Gap(53),
                ContainerBtn(radius: 10, Textdata: "Proceed", Boxcolor: Color(0xFF7F23A8),color: Colors.white,),
              ],
            ),
          ),
        ),)

    );
  }
}

class ContainerBtn2 extends StatelessWidget {
  ContainerBtn2({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.onTap
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Boxcolor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: Color(0xFF7F23A8))
        ),
        child: Center(
          child: Text("$Textdata", style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color
          ),),
        ),

      ),
    );
  }
}

