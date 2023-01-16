import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../setting/VerifyIdentity/Informationrequired.dart';
import '../../../utils/styles.dart';
import 'WithdrawActiviteandComplete/Withdrawal Summary.dart';


class settingActive extends StatelessWidget {
  const settingActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Settings", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Get.back();
          },
              icon: const
              Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            children:  [
              const Gap(50),
              Text(
                " Manually deposit money from your\n"
                    "assigned wallet",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 34,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "Set the type of savings you would prefer",
                  //   style: Styles.headLineStyle2
                  //       .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(height: 8,),
                  // ContainerDrop(
                  //   onTap: () {
                  //     // Get.to(const InformationRequired());
                  //   },
                  //   radius: 10,
                  //   Textdata: "Period",
                  //   color: Colors.black,
                  //   fontWeight: FontWeight.w400,
                  //   Boxcolor: Colors.white,
                  //   fontSize: 16,
                  // )
                ],
              ),
              const Gap(17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amount",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8,),
                  EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8),
                      obscureText: false, hintText: "e.g 1000"),
                ],
              ),
              const Gap(17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Source",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8,),
                  ContainerDrop(
                    onTap: () {
                      Get.to(const InformationRequired());
                    },
                    radius: 10,
                    Textdata: "Flatra Wallet",
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    Boxcolor: Colors.white,
                    fontSize: 16,
                  )
                ],
              ),

              const Gap(30),
              ContainerBtn(
                onTap: () {
                },
                radius: 10,
                Textdata: "Proceed",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                Boxcolor: const Color(0xFF7F23A8),
                fontSize: 16,
              )
            ],
          ),
        ),)


    );
  }
}



class ContainerDrop extends StatelessWidget {
  ContainerDrop({
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
            border: Border.all(color:const Color(0xFF7F23A8) )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$Textdata", style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color
                ),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down_outlined))
              ],
            ),
          ),
        ),

      ),
    );
  }
}


