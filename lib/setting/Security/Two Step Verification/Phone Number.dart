import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'Confirm OTP.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Two Step Verification", style: TextStyle(
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(19),
            const Gap(22),
            const Text("Phone Number", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),),
            const   Gap(8),
            const  Text("Kindly fill in the input feild with the required info", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),),
            const  Gap(21),
            const  Text("Phone Number", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),),
            const  Gap(8),
            EditTextMyOwn(
              obscureText: false,
              keyboardType: TextInputType.number,
              Boardcolor: Color(0xFF7F23A8),
              height: 50,
              Boxcolor: Colors.white,
              Hintcolor: Color(0xFF9B9B9B),

            ),
            const  Gap(30),
            ContainerBtn(
              onTap: () {
                Get.to(ConfirmotpTwoStepV());
              },
              radius: 10,
              Textdata: "Proceed",
              color: Colors.white,
              fontWeight: FontWeight.w600,
              Boxcolor: Color(0xFF7F23A8),
              fontSize: 16,
            )

          ],
        ),
      ),


    );
  }
}
