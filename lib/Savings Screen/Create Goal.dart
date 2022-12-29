import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../setting/VerifyIdentity/Informationrequired.dart';
import '../../../utils/styles.dart';


class CreateGoal extends StatefulWidget {
   CreateGoal({Key? key}) : super(key: key);

  @override
  State<CreateGoal> createState() => _CreateGoalState();
}

class _CreateGoalState extends State<CreateGoal> {
  DateTime _selectedDate = DateTime.now();
  DateTimeRange _selectDateRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Create Goal", style: TextStyle(
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
          child: SingleChildScrollView(
            child: Column(
              children:  [
                const Gap(20),
                Text(
                  "Begin your savings journey today.",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const Gap(40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name of Goal",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8),
                            obscureText: false, hintText: "e.g New house, New Car..."),
                      ],
                    ),
                    const Gap(21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Amount",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        EditTextMyOwn(Boardcolor: const Color(0xFF7F23A8),
                            obscureText: false, hintText: "e.g 1000"),
                      ],
                    ),
                    const Gap(21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Type",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        ContainerDrop(
                          onTap: () {
                          },
                          radius: 10,
                          icon: Icons.keyboard_arrow_down_rounded,
                          Textdata: "Fixed Deposit",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          Boxcolor: Colors.white,
                          fontSize: 16,
                        )
                      ],
                    ),
                    const Gap(21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Source",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        ContainerDrop(
                          onTap: () {
                          },
                          radius: 10,
                          icon: Icons.keyboard_arrow_down_rounded,
                          Textdata: "Flatra  Wallet",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          Boxcolor: Colors.white,
                          fontSize: 16,
                        )
                      ],
                    ),
                    const Gap(21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Set Start and End Date",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        ContainerDrop(
                          onTap: () {
                          },
                          radius: 10,
                          icon: Icons.calendar_month,
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
                          Textdata: "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          Boxcolor: Colors.white,
                          fontSize: 16,
                        )
                      ],
                    ),
                    const Gap(21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Set Withdrawal Days",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8,),
                        ContainerDrop(
                          onTap: ()  {



                          },
                          IcononPressed: () async {
                            DateTimeRange? dateTimeR = await showDateRangePicker(context: context,
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

                                lastDate: DateTime(30000));

                            if(dateTimeR!=null){
                              setState(() {
                                _selectDateRange=dateTimeR;
                              });
                            }
                          },
                          radius: 10,
                          icon: Icons.calendar_month,
                          Textdata: "${_selectDateRange.start.day}/${_selectDateRange.end.day}/${_selectedDate.year}",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          Boxcolor: Colors.white,
                          fontSize: 16,
                        )
                      ],
                    ),
                  ],
                ),
                const Gap(27),

                ContainerBtn(
                  onTap: () {
                    Get.dialog(Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        height: 249,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color:  const Color(0xFF7F23A8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "By clicking proceed you agree to the\n"
                          "terms that flatra will collect a  X% as\n"
                          "a penalty fee for breaking before the\n"
                                    "due date.",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),
                                textAlign: TextAlign.start,
                              ),
                              ContainerBtn(
                                onTap: () {
                                  Get.bottomSheet(SingleChildScrollView(
                                    child: Container(
                                      height: 467,
                                      decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Stack(
                                                    children: [
                                                      Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                                                          fit: BoxFit.cover),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          const Gap(60),
                                                          Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(50),
                                                                color: Colors.white),
                                                            child: Stack(children: [
                                                              Align(
                                                                alignment: Alignment.center,
                                                                child: Lottie.asset(
                                                                    "assets/lottie/119996-coffetti-ev.json",
                                                                    fit: BoxFit.cover),
                                                              ),
                                                              Align(
                                                                  alignment: Alignment.center,
                                                                  child: Image.asset("assets/png/tick.png"))
                                                            ]),
                                                          ),
                                                          const Gap(20),
                                                          Text(
                                                            "Congratulations!",
                                                            style: Styles.headLineStylel.copyWith(
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                          Text(
                                                            "An Escrow invitation has beeen sent to \n"
                                                                "abc@gmail.com. You will be notified as soon as the\n"
                                                                "payment has been made.",
                                                            style: Styles.textStyle.copyWith(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.normal,
                                                                fontSize: 14),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          const Gap(16),
                                                          ContainerBtn(radius: 10, Textdata: "Proceed",
                                                            color: const Color(0xFFFFFFff),
                                                            Boxcolor: const Color(0xFF10F2EA),
                                                            onTap: () {
                                                            Get.back();
                                                            },
                                                          ),

                                                        ],
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));

                                },
                                radius: 10,
                                Textdata: "Proceed",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                Boxcolor: const Color(0xFF10F2EA),
                                fontSize: 16,
                              )

                            ],
                          ),
                        ),
                      ),
                    ));
                  },
                  radius: 10,
                  Textdata: "Proceed",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  Boxcolor: const Color(0xFF7F23A8),
                  fontSize: 16,
                )
              ],
            ),
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
    this.IcononPressed,
    required this.icon,
    this.onTap
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;
  IconData? icon;
  Function()? IcononPressed;

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

