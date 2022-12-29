import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/styles.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'WithdrawActiviteandComplete/Withdrawal Summary.dart';


class QuickDeposit extends StatefulWidget {
   QuickDeposit({Key? key}) : super(key: key);

  @override
  State<QuickDeposit> createState() => _QuickDepositState();
}

class _QuickDepositState extends State<QuickDeposit> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Quick Deposit", style: TextStyle(
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
              const Gap(40),
              Text(
                " Manually deposit money from your\n"
                    "assigned wallet",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const Gap(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Set the type of savings you would prefer",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8,),
                  ContainerDrop(
                    onTap: () {
                    },
                    radius: 10,
                    icon: Icons.keyboard_arrow_down_rounded,
                    Textdata: "Flatra Wallet",
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    Boxcolor: Colors.white,
                    fontSize: 16,
                  )
                ],
              ),
              const Gap(27),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Set the date you will withdraw can withdraw funds from\n"
                        "your savings account without a penalty fee.",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 8,),
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
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Note: You can change withdrawal date 3 times alone\n"
                        "before date is due.",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const Gap(27),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select a default account you will like us to withdraw from\n"
                        "for your fixed savings",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 8,),
                  ContainerDrop(
                    onTap: () {
                    },
                    radius: 10,
                    icon: Icons.keyboard_arrow_down_rounded,
                    Textdata: "Flatra Wallet",
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    Boxcolor: Colors.white,
                    fontSize: 16,
                  )
                ],
              ),
              const Gap(27),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select a fixed amount to be withrawn periodically Min. N1000",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 8,),
                  EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8),
                      obscureText: false, hintText: "1000"),
                ],
              ),


              const Gap(30),
              // ContainerBtn(
              //   onTap: () {
              //   },
              //   radius: 10,
              //   Textdata: "Proceed",
              //   color: Colors.white,
              //   fontWeight: FontWeight.w600,
              //   Boxcolor: const Color(0xFF7F23A8),
              //   fontSize: 16,
              // )
            ],
          ),
        ),)


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


