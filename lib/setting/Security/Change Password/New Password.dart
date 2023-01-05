import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'Enter Password.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool visiblity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        backgroundColor: Colors.white,
        title: const Text("Change Password", style: TextStyle(
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
            const Gap(130),
            const Text("New Password", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18
            ),),
            const Gap(8),
            const Text("Kindly input your old password", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14
            ),),
            const Gap(8),
            EditTextMyOwn(
              Boardcolor: Color(0xFF7F23A8),
              Suffixicon: visiblity==true?Icons.visibility_off:Icons.visibility,
              obscureText: visiblity,
              IcononPressed: () {
                setState(() {
                  visiblity==true?visiblity=false:visiblity=true;
                });
              },
              height: 50,
              Boxcolor: Colors.white,
              Hintcolor: Color(0xFF9B9B9B),

            ),
            const Gap(8),

            Row(
              children: const [
                Icon(Icons.circle, size: 16,color: Color(0xFF7F23A8)),
               Gap(6),
                Text("Contains atleast 8 characters", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
              ],
            ),
            const Gap(8),
            Row(
              children: const [
                Icon(Icons.circle, size: 16,color: Color(0xFF7F23A8)),
                Gap(6),
                Text("Must contain a symbol and a letter", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
              ],
            ),
            const Gap(31),
            ContainerBtn(
              onTap: () {
                Get.to(EnterPassword());
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
