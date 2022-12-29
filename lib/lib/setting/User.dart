import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Escrow/Escrow Information.dart';
import '../Flatra Crypto/BottonBarFlatraC.dart';
import '../Flatra Crypto/Flatra Crypto.dart';
import '../Flatra Crypto/Home/homeFlatra.dart';
import '../helpers/routes_helper.dart';
import 'Refer a Friend/Refer a Friend.dart';
import 'Settings.dart';

class SettingUser extends StatefulWidget {
  const SettingUser({Key? key}) : super(key: key);

  @override
  State<SettingUser> createState() => _SettingUserState();
}

class _SettingUserState extends State<SettingUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:   [
              SizedBox(height: MediaQuery.of(context).size.height/15,),
              const FirstSectionWithCircleImage(),
             const Gap(47),
               EscrowSecurePayment(headiing: "Escrow Secure Payment" ,
                  onTap: () {
                 Get.to(FlatraCryptoBottomBar());
                 //TODO:Escrow
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => EscrowInformation(),));
                  },
                  subHeading: "This contains the general information about the\n business and how it should work"),
              const Gap(18),
              EscrowSecurePayment(headiing: "Referal ID" ,
                  onTap: () {
                    //TODO:Referal
                    Get.to(ReferaFriend());
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
                   const Gap(26),
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
        ),


    ));
  }
}









///EscrowSecurePayment

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
        Row(
          children:  [
             Gap(26),
            InkWell(
              onTap: onTap,
              child: Text("$headiing", style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),),
            ),
          ],
        ),
        Row(
          children:  [
            const Gap(26),
            Text("$subHeading",
              textAlign: TextAlign.start,
              style: const TextStyle(
              fontSize: 12,

              fontWeight: FontWeight.w400
            ),),
          ],
        ),
      ],
    );
  }
}





///FirstSectionWithCircleImage
class FirstSectionWithCircleImage extends StatelessWidget {
  const FirstSectionWithCircleImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(24),
        Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 28,
                  child: Container(child: Image.asset("assets/images/img_2.png", )),
                ),
                Positioned(
                  left: 40,
                  bottom: 0,
                  child: CircleAvatar(radius: 9,
                      backgroundColor: Colors.white,child: Image.asset("assets/images/img_1.png")),
                )
              ],
            ),
            const Gap(5),
            Text("Verified", style: Styles.textStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10
            ),)
          ],

        ),
        const Gap(12),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("oluwaseunnok@gmail.com", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),),
            Gap(5),
            Text("User2345", style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF7F23A8)
            ),),
          ],
        ),

      ],
    );
  }
}
