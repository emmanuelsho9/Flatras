import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../utils/styles.dart';
import 'Confirm OTP.dart';

class bioPageViewTwo extends StatefulWidget {
  const bioPageViewTwo({Key? key}) : super(key: key);

  @override
  State<bioPageViewTwo> createState() => _bioPageViewTwoState();
}

class _bioPageViewTwoState extends State<bioPageViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
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
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Gap(63),

            Image.asset("assets/images/img_6.png",width: 72, height: 6,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(19),
                Text(
                  "Phone Number",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Gap(6),
                Text(
                  "Kindly fill in the input feild with the required info",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                Gap(32),
                Text(
                  "Phone Number",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),

                Gap(7),
                EditTextMyOwn(
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  Boardcolor: Color(0xFF7F23A8),
                  width: double.infinity,
                  height: 50,
                  Boxcolor: Colors.white,
                  Hintcolor: Color(0xFF9B9B9B),

                ),
                Gap(30),
                ContainerBtn(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmotp(),));
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
          ],
        ),
      ),)


    );
  }
}
