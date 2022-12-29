import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'Buyer Requirements.dart';

class EscrowInformation extends StatefulWidget {
   EscrowInformation({Key? key}) : super(key: key);

  @override
  State<EscrowInformation> createState() => _EscrowInformationState();
}

class _EscrowInformationState extends State<EscrowInformation> {
  TextEditingController numberQuantity = TextEditingController();

  int numberQ = 0;

  increaseQuantity(){

    numberQ++;
  }

  decreaseQuantity(){
    numberQ--;
    print(decreaseQuantity());
  }

  bool isBuyer = true;

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
            Text("Escrow Information", style: TextStyle(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0,right: 19),
          child: Center(
            child: Column(
              children: [
                isBuyer==true?iAmABuyer(radius: 10,  Textdata: "I’m a Buyer",
                  color: Colors.black,
                  Boxcolor: const Color(0xFFF5F5F5),
                  onTap: () {
                  isBuyer==true?isBuyer=false:isBuyer=true;
                  print(isBuyer);
                  setState(() {

                  });
                  },
                  Sideicon: Icon(Icons.keyboard_arrow_down_outlined),
                ): iAmABuyer(radius: 10,  Textdata: "I’m a Seller",
                  color: Colors.black,
                  Boxcolor: const Color(0xFFF5F5F5),
                  onTap: () {
                    isBuyer==true?isBuyer=false:isBuyer=true;
                    setState(() {

                    });
                  },
                  Sideicon: const Icon(Icons.keyboard_arrow_down_outlined),
                ),

                const Gap(25),
                Row(
                  children: const [
                    Text("Category", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                    ),),
                  ],
                ),
                const Gap(6),
                EditTextMyOwn(
                  obscureText: false,
                  Boardcolor: const Color(0xFFF5F5F5),
                  height: 50,
                  hintText: "Services, equipment etc",
                  Suffixicon: Icons.keyboard_arrow_down,
                  IcononPressed: () {
                    print("tapped");
                  },
                  Boxcolor: const Color(0xFFF5F5F5),
                  Hintcolor: const Color(0xFF9B9B9B),

                ),
                const  Gap(20),
                Row(
                  children: const [
                    Text("Type", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                    ),),
                  ],
                ),
                EditTextMyOwn(
                  obscureText: false,
                  Boardcolor: const Color(0xFFF5F5F5),
                  height: 50,
                  hintText: "e.g Samsung Phone",
                  Suffixicon: Icons.keyboard_arrow_down,
                  IcononPressed: () {
                    print("tapped");
                  },
                  Boxcolor: const Color(0xFFF5F5F5),
                  Hintcolor: const Color(0xFF9B9B9B),

                ),
                const Gap(25),
                Row(
                  children: const [
                    Text("Quantity (Optional)", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                    ),),
                  ],
                ),
                const Gap(6),
                Container(
                  height: 50,
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
                      controller: numberQuantity,
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Services, equipment etc",
                        hintStyle: const TextStyle(
                          color: Color(0xFF9B9B9B),

                        ),
                        suffixIcon: Stack(
                          children: [
                            IconButton(onPressed: () => null,
                                icon:  const Icon(Icons.keyboard_arrow_down, color: Colors.black,)),
                            Positioned(
                              bottom: 7,
                              child: IconButton(onPressed: () {
                                decreaseQuantity();
                              },
                                  icon: const Icon(Icons.keyboard_arrow_up, color: Colors.black,)),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ),
                ),
                const Gap(43),
                ContainerBtn(radius: 10, Textdata: "Proceed",
                color: const Color(0xFFFFFFff),
                Boxcolor: const Color(0xFF7F23A8),
                  onTap: () {
                  Get.to(const BuyerRequirements());
                  },
                ),
                const Gap(20),
                InkWell(
                  onTap: () {
                    print("pressed");
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: const Text("By clicking proceed you agree to our ",textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),),
                          ),
                          Container(
                            child: const Text(" Terms &",textAlign: TextAlign.center,
                              style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF7F23A8)
                            ),),
                          ),
                        ],
                      ),
                      const Text("Conditions.",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF7F23A8)
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),


    );
  }
}













class iAmABuyer extends StatelessWidget {
  iAmABuyer({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.onTap,
    required this.Sideicon,
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;
  Icon Sideicon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Boxcolor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text("$Textdata", style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: color
              ),),
            ),
            IconButton(onPressed: () {

            }, icon: Sideicon)
          ],
        ),

      ),
    );
  }
}
