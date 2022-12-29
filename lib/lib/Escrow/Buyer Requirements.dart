import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'Terms of Trade.dart';

class BuyerRequirements extends StatelessWidget {
  const BuyerRequirements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Text("Buyer Requirements", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: Column(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: const
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 19.0, right: 19),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Seller Name", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  Gap(6),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. Peter, Macko Industry etc.",
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(25),
                  Row(
                    children: const [
                      Text("Seller Email", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  Gap(6),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "Seller Email",
                    Suffixicon: Icons.keyboard_arrow_down,
                    IcononPressed: () {
                      print("tapped");
                    },
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(20),
                  Row(
                    children: const [
                      Text("Necessary Information", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  Gap(6),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF5F5F5),
                        border: Border.all(
                          color: Color(0xFFF5F5F5),

                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: TextFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Product Description, Address of receipient etc.",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF9B9B9B),

                          ),
                        ),

                      ),
                    ),
                  ),
                  const Gap(45),
                  // Row(
                  //   children:  [
                  //     IconButton(onPressed: () => null,
                  //         icon: const Icon(Icons.add_circle_rounded, size: 30,
                  //           color: Color(0xFF7F23A8),)),
                  //     Gap(5),
                  //
                  //
                  //     const Text("Add Milestone"),
                  //   ],
                  // ),

                  ContainerBtn(radius: 10, Textdata: "Proceed",
                    color: Color(0xFFFFFFff),
                    Boxcolor: Color(0xFF7F23A8),
                    onTap: () {
                      Get.to(TermsofTrade());
                    },
                  ),

                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
