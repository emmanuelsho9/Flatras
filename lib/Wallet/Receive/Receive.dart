import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flatra/common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../Send/Beneficiary List.dart';

class Recieve extends StatefulWidget {
  const Recieve({Key? key}) : super(key: key);

  @override
  State<Recieve> createState() => _RecieveState();
}

class _RecieveState extends State<Recieve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text("Receive", style: TextStyle(
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ETH",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
               const Gap(6),
                Image.asset("assets/images/img_23.png",scale: 2,),
                const Text("Wallet",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                const Gap(7),
                const Text("0xdf90Df7c94fA4bEFdc735798aECd377\n16362e54b", textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
                const Gap(10),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF10F2EA),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                    child: Text("Note: Only send the token assigned to this address\n"
                        "any other token sent will be lost permanently!", textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),),
                  ),
                ),
                const Gap(110),
                ContainerBtn(radius: 10, Textdata: "Copy Address",Boxcolor: Color(0xFF7F23A8), color: Colors.white,onTap: () {
                  Get.snackbar(
                      "", "Added successfully",
                      messageText: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const  Text("Code Copy Successfully", style: TextStyle(
                              color: Colors.white
                          ),),
                          const Gap(15),
                          Image.asset("assets/images/img_22.png", scale: 2,),
                        ],
                      ),
                      backgroundColor: kPrimaryColor,
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      colorText: Colors.white);

                },),
                const Gap(15),
                ContainerBtn(radius: 10, Textdata: "Share Address",Boxcolor:Color(0xFF7F23A8), color: Colors.white, ),

              ],
            ),
          ),
        ),)

    );
  }
}






