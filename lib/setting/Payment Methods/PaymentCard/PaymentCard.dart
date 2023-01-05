import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flatra/setting/Payment%20Methods/PaymentCard/select%20card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../Escrow/Terms of Trade.dart';
import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../utils/styles.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appBar =AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text("Payment Methods", style: TextStyle(
          fontWeight:FontWeight.w600,
          fontSize: 16,
          color: Colors.black
      ),),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
          icon: const
          Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: screenResponisive(scaffold: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: SizedBox(
            height: (MediaQuery.of(context).size.height-appBar.preferredSize.height),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               Center(
                 child: Column(
                   children: [
                     Text(
                       "Add Card",
                       style: Styles.headLineStyle2
                           .copyWith(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w600),
                       textAlign: TextAlign.center,
                     ),
                     Text(
                       "Add a credit/Debit card to your Flatra account",
                       style: Styles.headLineStyle2
                           .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                       textAlign: TextAlign.center,
                     ),
                   ],
                 ),
               ),
                Gap(17),
                const Text("Full Name", style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),),
                Gap(7),
                EditTextMyOwn(
                  obscureText: false,
                  Boardcolor: const Color(0xFF7F23A8),
                  height: 50,
                  Boxcolor: Colors.white,
                  Hintcolor: const Color(0xFF9B9B9B),
                  hintText: "XXXX  XXXX  XXXX  XXXX",
                ),
                const Gap(17),
                const Text("Card Number", style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),),
                const Gap(7),
                EditTextMyOwn(
                  obscureText: false,
                  Boardcolor: const Color(0xFF7F23A8),
                  keyboardType: TextInputType.number,
                  height: 50,
                  Boxcolor: Colors.white,
                  Hintcolor:const Color(0xFF9B9B9B),
                  hintText: "XXXX  XXXX  XXXX  XXXX",
                ),
                const Gap(24),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("Expiry Date", style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),),
                        const  Gap(7),
                        EditTextMyOwnpm(
                          obscureText: false,
                          Boardcolor:const Color(0xFF7F23A8),
                          height: 50,
                          keyboardType: TextInputType.number,
                          Boxcolor: Colors.white,
                          Hintcolor:const Color(0xFF9B9B9B),
                          hintText: "XXXX",
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Gap(23),
                            Text("CVV", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                            ),),

                          ],
                        ),
                        const  Gap(7),
                        Row(
                          children: [
                            const Gap(17),
                            EditTextMyOwnpm(
                              obscureText: false,
                              keyboardType: TextInputType.number,
                              Boardcolor:const Color(0xFF7F23A8),
                              height: 50,
                              Boxcolor: Colors.white,
                              Hintcolor:const Color(0xFF9B9B9B),
                              hintText: "XXXX",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(13),

                    Column(
                      children: [
                        const Gap(15),
                        Image.asset("assets/images/img_10.png", width: 24,height: 24,),
                      ],
                    )
                  ],
                ),
                const Gap(51),
                ContainerBtn(
                  Textdata: "Add Card",
                  radius: 10,
                  color: Colors.white,
                  Boxcolor:const Color(0xFF7F23A8),
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCardTwo(),));
                  },
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(51),


              ],
            ),
          ),
        ),
      ),)


    );
  }
}



class EditTextMyOwnpm extends StatelessWidget {
  EditTextMyOwnpm({
    Key? key,this.height,this.Boxcolor,
    required this.Boardcolor,
    this.hintText,
    this.Hintcolor,
    this.IcononPressed,
    this.Suffixicon,
    this.keyboardType,
    required this.obscureText,
    this.TextFieldenabled,
    this.controller,
  });
  double? height;
  Color? Boxcolor;
  Color Boardcolor = const Color(0xFF000000);
  String? hintText;
  Color? Hintcolor;
  Function()? IcononPressed;
  IconData? Suffixicon;
  TextInputType? keyboardType;
  bool obscureText = false;
  bool? TextFieldenabled;
  TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width/3.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Boxcolor,
          border: Border.all(
            color: Boardcolor,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: TextFormField(
          enabled: TextFieldenabled,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Hintcolor,

            ),
            suffixIcon: IconButton(onPressed: IcononPressed, icon: Icon(Suffixicon, color: Colors.black,)),
          ),

        ),
      ),
    );
  }
}
