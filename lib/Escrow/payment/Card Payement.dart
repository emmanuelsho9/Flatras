import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/enter pin keyboard.dart';
import '../../common_widgets/enter_pin_pad.dart';
import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/numerical_pad.dart';
import '../../setting/Payment Methods/PaymentCard/PaymentCard.dart';
import '../../setting/Payment Methods/PaymentCard/select card.dart';

class CardPaymentE extends StatelessWidget {
  const CardPaymentE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Payment Option", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19.0,right: 19, top: 50),
        child: Column(
          children: [
            Container(
              child: const Text("Select the credit card\n"
                  "you wish to use to make purchases", textAlign: TextAlign.center, style: TextStyle(
                  fontWeight:FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black
              ),),
            ),
            const Gap(20),
            Expanded(flex: 1,child: ListOfCard()),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const PaymentCard());
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.add_circle_outlined,color: Color(0xFF7F23A8),
                            size: 20,
                          ),
                          Text("Add Card", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF7F23A8)
                          ),)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {

                        showDia(context);

                      },
                      child: Row(
                        children: const [
                          Icon(Icons.delete,color: Color(0xFFFF1414),
                            size: 20,
                          ),
                          Text("Remove Card", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFFFF1414)
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
               const Gap(30),
                Column(
                  children: [
                    Container(
                      height: 50,
                      child: ContainerBtn(
                        Textdata: "Proceed",
                        radius: 10,
                        color: Colors.white,
                        Boxcolor: Color(0xFF7F23A8),
                        onTap: () {
                          Get.to(const EnterPinKeyboard());
                        },
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

              ],
            ),



            Expanded(
              flex: 1,
              child: Container(),
            ),
            Gap(223),


          ],
        ),
      ),

    );
  }
}
