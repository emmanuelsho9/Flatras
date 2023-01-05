import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../utils/styles.dart';
import '../Payment Methods/PaymentCard/PaymentCard.dart';
import 'Informationrequired.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final appBar = AppBar(
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
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const Gap(130),
              Text(
                "Verify your identity",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const Gap(8),
              Text(
                "Following the rules and regulations issued by\n"
                    "the government, we are required to get proper \n "
                    "information about the you before \n "
                    "you can start trading.",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),

              const Gap(39),
              ContainerBtn(
                onTap: () {
                  Get.to(const InformationRequired());
                  },
                radius: 10,
                Textdata: "Verify Identity",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                Boxcolor: const Color(0xFF7F23A8),
                fontSize: 16,
              )
            ],
          ),
        ),
      ),)


    );
  }
}
