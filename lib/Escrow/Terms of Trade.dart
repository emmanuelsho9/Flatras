import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../setting/Appearance/Appearance.dart';
import 'Escrow Details.dart';

class TermsofTrade extends StatelessWidget {
  const TermsofTrade({Key? key}) : super(key: key);

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
            Text("Terms of Trade", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: Column(
          children: [
            IconButton(onPressed: (){
              Get.back();
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
              padding: const EdgeInsets.only(left: 19.0,right: 19),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Amount", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const   Gap(6),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EditTextMyOwn(
                          obscureText: false,
                          Boardcolor: Color(0xFFF5F5F5),
                          height: 50,
                          width: MediaQuery.of(context).size.width-120,
                          hintText: "0.00",
                          IcononPressed: () {
                            print("tapped");
                          },
                          Boxcolor: Color(0xFFF5F5F5),
                          Hintcolor: Color(0xFF9B9B9B),

                        ),

                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF7F23A8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Row(
                            children:  [
                              const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                              const  Gap(3),
                              const Text("USD", style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 14
                              ),),
                              const  Gap(5),
                              Image.asset("assets/png/img_1.png", width: 14, height: 14,),
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                  const  Gap(22),
                  Row(
                    children: const [
                      Text("Transaction Fee: X%", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        color: Color(0xFF7F23A8)
                      ),),
                    ],
                  ),
                  const   Gap(22),
                  Row(
                    children: const [
                      Text("How do you want to make payment?", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                      ),),
                    ],
                  ),
                  const   Gap(13),
                  AppearanceSelector(
                    gapDown: 10,
                    Bordercolor: Color(0xFF7F23A8),
                    heading: "By Milestones",
                    subHeading: "Divide the project into smaller segments and pay\n"
                        "upon completion of milestone.",
                    elevation: 0,
                  ),
                  const    Gap(10),
                  AppearanceSelector(
                    gapDown: 10,
                    Bordercolor: Color(0xFFEDEDED),
                    heading: "One time Payement",
                    subHeading: "Make a one-time payment into Flatra, \n "
                        "funds will be dibursed upon completion. ",
                    elevation: 0,
                  ),
                  Gap(51),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Milestone 1", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF7F23A8)
                      ),),

                    ],
                  ),

                  const   Gap(10),
                  Row(
                    children:  const [
                      Text("Description", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(6),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. abc@gmail.com",
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(9),
                  Row(
                    children: const [
                      Text("Amount", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(22),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. 5000",
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  const Gap(9),
                  Row(
                    children: const [
                      Text("Due Date (optional)", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(22),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. abc@gmail.com",
                    Suffixicon: Icons.calendar_month,
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(23),
                  Row(
                    children: [
                      IconButton(onPressed: () => null,
                          icon: const Icon(Icons.add_circle_rounded, size: 30,
                            color: Color(0xFF7F23A8),)),


                      const Text("Add Milestone"),
                    ],
                  ),

                  const Gap(40),
                  ContainerBtn(radius: 10, Textdata: "Proceed",
                    color: Color(0xFFFFFFff),
                    Boxcolor: Color(0xFF7F23A8),
                    onTap: () {
                      Get.to(EscrowDetails());
                      },
                  ),
                  const Gap(78),

                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
