import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Savings Screen/Active/Fixed Deposit.dart';
import '../common_widgets/bottomSheetToSelect.dart';
import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../setting/Appearance/Appearance.dart';
import 'Escrow Details.dart';

class TermsofTrade extends StatefulWidget {
   TermsofTrade({Key? key}) : super(key: key);

  @override
  State<TermsofTrade> createState() => _TermsofTradeState();
}

class _TermsofTradeState extends State<TermsofTrade> {
  DateTime _selectedDate = DateTime.now();

  var stringFromActivity;
  var Isimg;

  Future _startActivity() async {

    var results = await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => RetuernContentbuyerListOfShowBottonSheet());

    if (results != null) {
      setState(() {
        stringFromActivity = results[0];
        Isimg = results[1];
        print(stringFromActivity);
      }
      );
    }else if(stringFromActivity == null&&Isimg==null){
      return Text("data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Terms of Trade", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
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
                      Flexible(
                        child: Text("Amount", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),),
                      ),
                    ],
                  ),
                  const   Gap(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Flexible(
                        flex: 2,
                        child: EditTextMyOwn(
                          obscureText: false,
                          Boardcolor: Color(0xFFF5F5F5),
                          keyboardType: TextInputType.phone,
                          height: 50,
                          hintText: "0.00",
                          IcononPressed: () {
                            print("tapped");
                          },
                          Boxcolor: const Color(0xFFF5F5F5),
                          Hintcolor: const Color(0xFF9B9B9B),

                        ),
                      ),

                      Flexible(
                        child: InkWell(
                          onTap: () async {
                            _startActivity();

                          },
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.only(right: 7, left: 7),
                              decoration: BoxDecoration(
                                color: const  Color(0xFF7F23A8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Row(
                                children:  [
                                  const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                  const  Gap(3),
                                  FittedBox(
                                    child: Text(stringFromActivity==null?"Select":stringFromActivity.toString(), style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontSize: 14
                                    ),),
                                  ),
                                  const  Gap(5),
                                  Isimg==null?Image.asset("assets/images/img_20.png",width: 28, height: 28):Image.network(Isimg, width: 28, height: 28,),
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                  ContainerDrop(
                    onTap: () {
                    },
                    radius: 10,
                    IcononPressed: () async {
                      DateTime? dateTime = await showDatePicker(context: context,
                          initialDate: _selectedDate,
                          firstDate: DateTime(1900),
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                  primary: Color(0xFF7F23A8), // <-- SEE HERE
                                  onPrimary: Colors.white, // <-- SEE HERE
                                  onSurface: Color.fromARGB(255, 66, 125, 145), // <-- SEE HERE
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    primary: Color(0xFF7F23A8), // button text color
                                  ),
                                ),
                              ),
                              child: child!,
                            );;
                          },
                          lastDate: DateTime(3000));
                      if(dateTime!=null){
                        setState(() {
                          _selectedDate=dateTime;
                        });
                      }



                    },
                    icon: Icons.calendar_month,
                    Textdata: "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    Boxcolor: Colors.white,
                    fontSize: 16,
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



class ContainerDrop extends StatelessWidget {
  ContainerDrop({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    required this.icon,
    this.onTap,
    this.IcononPressed
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;
  Function()? IcononPressed;

  IconData? icon;

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
            border: Border.all(color:const Color(0xFF7F23A8) )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$Textdata", style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color
                ),),
                IconButton(onPressed: IcononPressed, icon:  Icon(icon))
              ],
            ),
          ),
        ),

      ),
    );
  }
}







class EditTextMyOwnTT extends StatelessWidget {
  EditTextMyOwnTT({
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
      width: 270,
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

