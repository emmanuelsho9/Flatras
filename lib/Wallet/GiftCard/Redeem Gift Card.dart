
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

class RedeemGiftCard extends StatelessWidget {
  const RedeemGiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Redeem Gift Card", style: TextStyle(
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
                const Text("Redeem crypto coin below",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                const Gap(64),
                Row(
                   children: const [
                     Text("Voucher Number",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                   ],
                 ),
                const Gap(7),
                EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8), obscureText: false,
                  height: 50,hintText: "input 16 digit character",),
                const Gap(40),
                ContainerBtn(radius: 10, Textdata: "Redeem", Boxcolor: const Color(0xFF7F23A8),color: Colors.white,),


              ],
            ),
          ),
        ),)

    );
  }
}






