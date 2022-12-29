import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'BeneficiaryListClass.dart';

class BeneficiaryList extends StatelessWidget {
   BeneficiaryList({Key? key}) : super(key: key);
  
  List<BeneficiaryListClass>b=[
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: b.length,itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(b[index].img.trim(), scale: 2,),

              Text(b[index].name),

            ],
          ),
        );
      },),
    );
  }
}



// Expanded(child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
//
// Expanded(
// child: BeneficiaryList()),
// ],
// )),
//
// Expanded(
// flex: 10,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: const [
// Text("Ethereum Wallet",
// style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
// Text("7.34 ETH",
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),),
// ],
// ),
// Image.asset("assets/images/img_19.png",scale: 2,)
//
// ],
// ),
// const  Gap(23),
// const Text("Recipient Wallet Address",
// style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
// const Gap(7),
// EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8), obscureText: false,
// height: 50,hintText: "0xF2AA65753e97464380CE9578C2559b4dEb630df9",),
// const Gap(15),
// const Text("Amount",
// style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
// const Gap(7),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// // DropdownButton<String>(
// //   items: <String>['A', 'B', 'C', 'D'].map((String value) {
// //     return DropdownMenuItem<String>(
// //       value: value,
// //       child: Text(value),
// //     );
// //   }).toList(),
// //   onChanged: (_) {},
// // ),
//
// // SendCryptdrop1(radius: 10, Textdata: "0.23",
// //   color: Colors.white,
// //   Iconcolor: Colors.white,
// //   Boxcolor:  Color(0Xff7F23A8), width: 99,icon: Icons.keyboard_arrow_down_outlined,),
// EditTextMyOwn(Boardcolor: Color(0xFF7F23A8), obscureText: false,
// height: 50,width: 250,hintText: "0.23",),
//
// ],
// ),
// const Gap(25),
// const Text("User Info",
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFF7F23A8)),),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// SizedBox(
// width: 110,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Image.asset("assets/images/img_21.png", scale: 2,),
// const Text("Mike Omar",
// style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
//
// ],
// ),
// ),
// InkWell(
// onTap: () {
// Get.snackbar(
// "", "Added successfully",
// messageText: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children:  [
// const  Text("Added successfully", style: TextStyle(
// color: Colors.white
// ),),
// const Gap(15),
// Image.asset("assets/images/img_22.png", scale: 2,),
// ],
// ),
// backgroundColor: kPrimaryColor,
// isDismissible: true,
// dismissDirection: DismissDirection.horizontal,
// colorText: Colors.white);
//
// },
// child: const Text("Add to Beneficiary",
// style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: Color(0xFF7F23A8)),),
// ),
//
// ],
// ),
//
// const Gap(195),
// ContainerBtn(radius: 10, Textdata: "Proceed", Boxcolor: Color(0xFF7F23A8),
// color: Colors.white,),
//
// Container(
// width: 99,
// height: 49,
// decoration:  BoxDecoration(
// color: Color(0xFF7F23A8),
// borderRadius: BorderRadius.circular(10)
// ),
// child: DropdownSearch<String>(
// popupProps: PopupProps.menu(
// showSelectedItems: true,
// disabledItemFn: (String s) => s.startsWith('I'),
// ),
// items: b,
// dropdownButtonProps: const DropdownButtonProps(
// color: Colors.white
// ),
// // dropdownDecoratorProps: const DropDownDecoratorProps(
// //   // dropdownSearchDecoration: InputDecoration(
// //   //   labelText: "Menu mode",
// //   //   hintText: "country in menu mode",
// //   // ),
// // ),
// onChanged: print,
// selectedItem: "Brazil",
// ),
// ),
//
//
//
//
//
// ],
// ),
// ),
//
// Row(
// children: [
// ],
//),