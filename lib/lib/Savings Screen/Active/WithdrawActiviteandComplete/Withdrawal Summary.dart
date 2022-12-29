import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../../../features/buy_crypto/screens/enter_pin_screen.dart';
import '../../../setting/VerifyIdentity/Informationrequired.dart';
import '../../../utils/styles.dart';


class Withdrawalsummary extends StatelessWidget {
  const Withdrawalsummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Withdrawal Summary", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Get.back();
          },
              icon: const
              Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            children:  [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(80),
                  Text(
                    "Withdrawal Summary",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8,),
                  ContainerDrop(
                    onTap: () {
                      // Get.to(const InformationRequired());
                    },
                    radius: 10,
                    price: "N0.00",
                    Value: "Value",
                    valuePrice: "0.000 BTC",
                    TransactionFee: "Transaction Fee",
                    TransactionFeePrice: "0.00",
                    Withdrawto: "Withdraw to",
                    TextAmount: "Amount",
                    WithdrawtoPrice: "xxxx xxxx xxxx 4321",
                    color: const Color(0xFF7F23A8),
                    fontWeight: FontWeight.w400,
                    Boxcolor: Color(0xFFF6E3FF),
                    fontSize: 16,
                  ),
                  Gap(10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 54,
                    decoration: BoxDecoration(
                        color: Color(0xFFF6E3FF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:const Color(0xFFF6E3FF) )
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Total Amount", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7F23A8)
                                ),),
                                Text("0.00", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                ),),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                ],
              ),
              const Gap(17),

              const Gap(30),
              ContainerBtn(
                onTap: () {
                  Get.to(const EnterPinScreen());
                },
                radius: 10,
                Textdata: "Withdraw",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                Boxcolor: const Color(0xFF7F23A8),
                fontSize: 16,
              ),
            ],
          ),
        ),)


    );
  }
}



class ContainerDrop extends StatelessWidget {
  ContainerDrop({
    Key? key, this.Boxcolor, required this.radius,
    this.price,
    this.TextAmount,
    this.Withdrawto,
    this.fontWeight,
    this.color,
    this.valuePrice,
    this.WithdrawtoPrice,
    this.TransactionFeePrice,
    this.Value,
    this.TransactionFee,
    this.Pricecolor,
    this.fontSize,
    this.onTap
  });
  Color? Boxcolor;
  double radius;
  String? TextAmount;
  String? Withdrawto;
  String? TransactionFee;
  String? Value;
  String? price;
  String? WithdrawtoPrice;
  String? TransactionFeePrice;
  String? valuePrice;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Color? Pricecolor;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
      Container(
        width: MediaQuery.of(context).size.width,
        height: 136,
        decoration: BoxDecoration(
            color: Boxcolor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color:const Color(0xFFF6E3FF) )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$TextAmount", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: color
                    ),),
                    Text("$price", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: Pricecolor
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$Value", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: color
                    ),),
                    Text("$valuePrice", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: Pricecolor
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$TransactionFee", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: color
                    ),),
                    Text("$TransactionFeePrice", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: Pricecolor
                    ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$Withdrawto", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: color
                    ),),
                    Text("$WithdrawtoPrice", style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: Pricecolor
                    ),),
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




