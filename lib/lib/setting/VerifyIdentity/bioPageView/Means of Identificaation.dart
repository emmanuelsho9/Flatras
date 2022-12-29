import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../Flatra Crypto/Home/homeFlatra.dart';
import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../utils/styles.dart';
import '../../User.dart';

class MeansofIdentificaation extends StatelessWidget {
  const MeansofIdentificaation ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor
          : Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Verify Identity", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Gap(63),
            Image.asset("assets/images/img_8.png",width: 72, height: 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Gap(22),
                Text(
                  "Means of Identificaation",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black,  fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Gap(6),
                Text(
                  "Take a picture of either your National ID card, drivers\n"
                      "license or passport.",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black,  fontSize: 12, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),

                const Gap(69.5),
                Image.asset("assets/images/img_9.png",),
                const Gap(68),
                ContainerBtn(
                  onTap: () {
                    Get.bottomSheet(SingleChildScrollView(
                      child: Container(
                        height: 467,
                        decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Stack(
                                      children: [
                                        Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                                            fit: BoxFit.cover),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Gap(60),
                                            Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  color: Colors.white),
                                              child: Stack(children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Lottie.asset(
                                                      "assets/lottie/119996-coffetti-ev.json",
                                                      fit: BoxFit.cover),
                                                ),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset("assets/png/tick.png"))
                                              ]),
                                            ),
                                            const Gap(20),
                                            Text(
                                              "Congratulations!",
                                              style: Styles.headLineStylel.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "An Escrow invitation has beeen sent to \n"
                                                  "abc@gmail.com. You will be notified as soon as the\n"
                                                  "payment has been made.",
                                              style: Styles.textStyle.copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                              textAlign: TextAlign.center,
                                            ),
                                            const Gap(16),
                                            ContainerBtn(radius: 10, Textdata: "Proceed",
                                              color: const Color(0xFFFFFFff),
                                              Boxcolor: const Color(0xFF10F2EA),
                                              onTap: () {
                                                //TODO: leave page
                                                Get.to(const SettingUser());
                                              },
                                            ),

                                          ],
                                        ),
                                      ]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));

                  },
                  radius: 10,
                  Textdata: "Take Picture",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  Boxcolor: Color(0xFF7F23A8),
                  fontSize: 16,
                )

              ],
            ),
          ],
        ),
      ),


    );
  }
}
