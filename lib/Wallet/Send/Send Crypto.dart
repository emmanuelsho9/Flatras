import 'package:dropdown_search/dropdown_search.dart';
import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flatra/common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/styles.dart';
import 'Beneficiary List.dart';
import 'BeneficiaryListClass.dart';

class sendCrypto extends StatefulWidget {
  const sendCrypto({Key? key}) : super(key: key);

  @override
  State<sendCrypto> createState() => _sendCryptoState();
}

class _sendCryptoState extends State<sendCrypto> {


  var b = [
    "Emmanuel","Doyin"
  ];

  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D'];

  List<BeneficiaryListClass>invo=[
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Send Crypto", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Container(
            child: BeneficiaryList(),
          ),
          ),
        ),)

    );
  }

}




class SendCryptdrop1 extends StatelessWidget {
  SendCryptdrop1({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.onTap,
   required this.width,
    this.icon,
    this.Iconcolor

  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Color? Iconcolor;
  Function()? onTap;
  double? width;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: Boxcolor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 2),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: Iconcolor,),
                Text("$Textdata", style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color
                ),),
                Image.asset("assets/images/img_20.png", scale: 1.5,)
              ],
            ),
          ),
        ),

      ),
    );
  }
}




