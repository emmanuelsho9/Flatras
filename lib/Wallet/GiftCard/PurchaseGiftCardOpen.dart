import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../utils/styles.dart';

class PurchaseGiftCardOpen extends StatelessWidget {
   PurchaseGiftCardOpen({Key? key, required this.image}) : super(key: key);

  String image;


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
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: SingleChildScrollView(
            child: Column( 
              children: [
              const  Gap(30),
                Text(
                  "Gift Crypto to anyone with over 150+\ncurrencies available.",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const Gap(50),
              Image.asset(image),
                const Gap(25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select coin",
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
                const Gap(25),
                Row(
                  children: [
                    Text(
                      "Total: 0.00",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const Gap(70),
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
                  Textdata: "Create Gift card",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  Boxcolor: const Color(0xFF7F23A8),
                  fontSize: 16,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
