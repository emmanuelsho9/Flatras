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
    final appBar =AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Column(),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height-appBar.preferredSize.height),
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            children: [
              const Gap(30),
              Text("Buyer Requirements", style: TextStyle(
                  fontWeight:FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black
              ),),
              const Gap(57),

              Row(
                children: const [

                  Text("Buyer Name", style: TextStyle(
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
                hintText: "eg. Peter, Macko Industry etc.",
                Boxcolor: Color(0xFFF5F5F5),
                Hintcolor: Color(0xFF9B9B9B),

              ),
              Gap(25),
              Row(
                children: const [
                  Text("Buyer Email", style: TextStyle(
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
                hintText: "Buyer Email",
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


    );
  }
}
