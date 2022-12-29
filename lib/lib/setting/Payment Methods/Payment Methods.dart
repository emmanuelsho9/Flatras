import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../../utils/styles.dart';
import 'PaymentCard/PaymentCard.dart';
import 'PaymentCard/select card.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Payment Methods", style: TextStyle(
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
      body: screenResponisive(
        scaffold: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const Gap(100),
                  Text(
                    "Add Payment Method",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),

                  const Gap(15),
                  Text(
                    "Add a Credit or Debit card to your Flatra Account\n and start trading",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),


                  const Gap(39),

                  ContainerBtn(
                    onTap: () {
                      Get.to(const SelectedCardTwo());
                    },
                    radius: 10,
                    Textdata: "Add Card",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    Boxcolor: Color(0xFF7F23A8),
                    fontSize: 16,
                  )
                ],
              ),
            ),
          ),
        ),
      )


    );
  }
}

