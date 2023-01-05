import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';

class ReferaFriend extends StatelessWidget {
   ReferaFriend({Key? key}) : super(key: key);
  String referId="SEUN5533".toUpperCase();

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
            Text("Refer a Friend", style: TextStyle(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
             LayoutBuilder(
               builder: (p0, con) {
                 return Column(
                   children: [
                     Image.asset("assets/png/img.png", width: 218.06, height: 171.75,),
                     const Gap(17),
                     Container(
                       child: const Text("Refer a friend and get a bonus \n"
                           "on your transaction fee when usig Flatra.",textAlign: TextAlign.center, style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                       ),),
                     ),
                     const Gap(26),
                     const Text("Referral ID ", textAlign: TextAlign.center, style:
                     TextStyle(
                         fontSize: 14,
                         color: Color(0xFF7F23A8),
                         fontWeight: FontWeight.w700
                     ),),
                     const Gap(6),
                     Text("$referId", textAlign: TextAlign.center,
                       style: const TextStyle(
                           fontSize: 20,

                           color: Color(0xFF000000),
                           fontWeight: FontWeight.w400
                       ),),
                     const Gap(7),
                     const Text("Current Bonus: 10%", textAlign: TextAlign.center, style:
                     TextStyle(
                         fontSize: 14,
                         color: Color(0xFF7F23A8),
                         fontWeight: FontWeight.w700
                     ),),
                   ],
                 );

               },
             ),
               Column(
                 children: [
                   const Gap(61),
                   ContainerBtn(
                     onTap: () {

                     },
                     radius: 10,
                     Textdata: "Copy Referral Code",
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                     Boxcolor: Color(0xFF7F23A8),
                     fontSize: 16,
                   ),
                   const Gap(16),
                   ContainerBtn(
                     onTap: () {

                     },
                     radius: 10,
                     Textdata: "Share Referral Code",
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                     Boxcolor: Color(0xFF7F23A8),
                     fontSize: 16,
                   ),
                 ],
               ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}
