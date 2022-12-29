import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Gap(76),
            Text("Change Password", style: TextStyle(
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
            children: const [
              Gap(19),
            ],
          ),
          Gap(22),
          Row(
            children: const [
              Gap(21),
              Text("New Password", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),),
            ],
          ),
          Gap(6),
          Row(
            children: const [
              Gap(21),
              Text("Kindly input your old password", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),
          Gap(15),
          Row(
            children: [
              Gap(21),
              EditTextMyOwn(
                Boardcolor: Color(0xFF7F23A8),
                Suffixicon: visiblity==true?Icons.visibility_off:Icons.visibility,
                obscureText: visiblity,
                IcononPressed: () {
                  setState(() {
                    visiblity==true?visiblity=false:visiblity=true;
                  });
                },
                width: 321,
                height: 50,
                Boxcolor: Colors.white,
                Hintcolor: Color(0xFF9B9B9B),

              ),
            ],
          ),
          Gap(14),
          Row(
            children: const [
              Gap(21),
              Icon(Icons.circle, size: 16,color: Color(0xFF7F23A8)),
              Gap(6),
              Text("Contains atleast 8 characters", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),
          Gap(8),
          Row(
            children: const [
              Gap(21),
              Icon(Icons.circle, size: 16,color: Color(0xFF7F23A8)),
              Gap(6),
              Text("Must contain a symbol and a letter", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
            ],
          ),
          Gap(31),
          Row(
            children: [
              Gap(21),
              ContainerBtn(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword(),));
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
