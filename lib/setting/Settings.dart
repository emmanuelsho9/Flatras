import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'Currency/Currency.dart';
import 'History/History.dart';
import 'Notification/Notification.dart';

import 'Appearance/Appearance.dart';
import 'Payment Methods/Payment Methods.dart';
import 'Security/Security.dart';
import 'VerifyIdentity/VerifyIdentity.dart';

class SettingsDetail extends StatelessWidget {
   SettingsDetail({Key? key}) : super(key: key);

   final appbar = AppBar(
     elevation: 0,
     centerTitle: true,
     backgroundColor: Colors.white,
     title: const Text("Setting", style: TextStyle(
         fontWeight:FontWeight.w600,
         fontSize: 16,
         color: Colors.black
     ),),
     leading: Image.asset("assets/images/img_24.png", scale: 2,),
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:appbar,
      body: Container(
        height: (MediaQuery.of(context).size.height)-appbar.preferredSize.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(40),
              EscrowSecurePayment(headiing: "Appearance",
              icon: Icons.arrow_forward_ios_rounded,
              IcononPressed:  () {
                Get.to(Appearance());
              },
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Notification",
              icon: Icons.arrow_forward_ios_rounded,
              IcononPressed: () {
                Get.to(NotificationSetting());
              },
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Currency",
              IcononPressed: () {
                Get.to(Currency());
              },
              icon: Icons.arrow_forward_ios_rounded,
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Payment Method",
              icon: Icons.arrow_forward_ios_rounded,
              IcononPressed: () {
                Get.to( PaymentMethods());
              },
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Transaction History",
              IcononPressed: () {
                //TODO:Transaction
                Get.to( HistoryView());
                },
              icon: Icons.arrow_forward_ios_rounded,
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Verify Identity",
              icon: Icons.arrow_forward_ios_rounded,
              IcononPressed: () {
                Get.to(VerifyIdentity());
                },
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Security",
              icon: Icons.arrow_forward_ios_rounded,
              IcononPressed: () {
                Get.to(Security());
              },
              subHeading: "This contains the general information about the \n business and how it should work",),
              const Gap(25),
              EscrowSecurePayment(headiing: "Privacy Policy and T&C",
              icon: Icons.arrow_forward_ios_rounded,
              subHeading: "This contains the general information about the \n business and how it should work",),

            ],
          ),
        ),
      ),
    );
  }
}


class EscrowSecurePayment extends StatelessWidget {
  EscrowSecurePayment({
    Key? key,this.headiing, this.subHeading, this.onTap, this.icon, this.IcononPressed
  }) ;

  String? headiing;
  String? subHeading;
  Function()? onTap;
  IconData? icon;
  Function()? IcononPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("$subHeading",
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 12,

                      fontWeight: FontWeight.w400
                  ),),
                IconButton(onPressed: IcononPressed, icon: Icon(icon))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
