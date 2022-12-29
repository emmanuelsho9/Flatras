import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';

class ConfirmotpTwoStepV extends StatelessWidget {
  const ConfirmotpTwoStepV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Gap(76),
            Text("Two Step Verification", style: TextStyle(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(63),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Gap(19),
            ],
          ),
          Gap(22),
          Row(
            children: const [
              Gap(21),
              Text("Confirm OTP", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
            ],
          ),
          Gap(6),
          Row(
            children: const [
              Gap(21),
              Text("An OTP has been sent to +234 xxxxxxxx. Kindly input\n"
                  "it below.", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),
          Gap(32),
          Row(
            children: const [
              Gap(21),
              Text("OTP", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),
          Gap(7),
          Row(
            children: [
              Gap(21),
              EditTextMyOwn(
                obscureText: false,
                keyboardType: TextInputType.number,
                Boardcolor: Color(0xFF7F23A8),
                width: 321,
                height: 50,
                Boxcolor: Colors.white,
                Hintcolor: Color(0xFF9B9B9B),

              ),
            ],
          ),
          Gap(8),
          Row(
            children: const [
              Gap(21),
              Text("Resend OTP", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),

          Gap(30),
          Row(
            children: [
              Gap(21),
              ContainerBtn(
                onTap: () {
                },
                radius: 10,
                Textdata: "Proceed",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                Boxcolor: Color(0xFF7F23A8),
                fontSize: 16,
              ),
            ],
          )

        ],
      ),


    );
  }
}
