import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/bottom_bar.dart';
import '../setting/Refer a Friend/Refer a Friend.dart';
import '../setting/Settings.dart';
import '../setting/User.dart';

class FlatraCrypto extends StatelessWidget {
  const FlatraCrypto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:   [
                const Gap(30),
                const FirstSectionWithCircleImage(),
                const Gap(47),
                EscrowSecurePayment(headiing: "Flatra Crypto" ,
                    onTap: () {
                      Get.back();
                    },
                    subHeading: "This contains the general information about the\n business and how it should work"),
                const Gap(18),
                EscrowSecurePayment(headiing: "Referal ID" ,
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) =>  ReferaFriend(),));
                    },
                    subHeading: "This contains the general information about the\n business and how it should work"),
                const Gap(20),
                InkWell(
                  onTap: () {
                    Get.to( SettingsDetail());

                  },
                  child: EscrowSecurePayment(headiing: "Settings" ,onTap: () {
                   Get.to( SettingsDetail());
                  },
                      subHeading: "This contains the general information about the\n business and how it should work"),
                ),
                const  Gap(47),


                InkWell(
                  onTap: () => null,
                  child: Row(
                    children: [
                      Image.asset("assets/images/img_4.png", ),
                      const Gap(6),
                      const Text("Log Out", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color:Color(0xFF7F23A8)
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),


        ));
  }
}


class EscrowSecurePayment extends StatelessWidget {
  EscrowSecurePayment({
    Key? key,this.headiing, this.subHeading, this.onTap
  }) ;

  String? headiing;
  String? subHeading;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: onTap,
          child: Text("$headiing", style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),),
        ),
        const Gap(4),
        Text("$subHeading",
          textAlign: TextAlign.start,
          style: const TextStyle(
              fontSize: 12,

              fontWeight: FontWeight.w400
          ),),
      ],
    );
  }
}
