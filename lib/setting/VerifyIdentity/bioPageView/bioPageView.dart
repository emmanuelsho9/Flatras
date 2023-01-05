import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:calender_picker/calender_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Escrow/Terms of Trade.dart';
import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../utils/styles.dart';
import 'Phone Number.dart';

class bioPageViewOne extends StatefulWidget {
  const bioPageViewOne({Key? key}) : super(key: key);

  @override
  State<bioPageViewOne> createState() => _bioPageViewOneState();
}
DateTime _selectedDate = DateTime.now();


class _bioPageViewOneState extends State<bioPageViewOne> {
  @override
  Widget build(BuildContext context) {
    final appBar =AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text("Verify Identity", style: TextStyle(
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
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Gap(63),
                Image.asset("assets/images/img_5.png",width: 72, height: 6,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(22),
                    Text(
                      "Bio Data",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),

                    const Gap(6),
                    Text(
                      "Below is a list of requirements for your account to be\n"
                          "verified:",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                    const Gap(32),
                    Text(
                      "First Name",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),

                    const Gap(7),
                    EditTextMyOwn(
                      obscureText: false,
                      Boardcolor: Color(0xFF7F23A8),
                      height: 50,
                      Boxcolor: Colors.white,
                      Hintcolor: Color(0xFF9B9B9B),

                    ),
                    const Gap(18),
                    Text(
                      "Last Name",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),

                    const Gap(7),
                    EditTextMyOwn(
                      obscureText: false,
                      Boardcolor: Color(0xFF7F23A8),
                      height: 50,
                      Boxcolor: Colors.white,
                      Hintcolor: Color(0xFF9B9B9B),

                    ),
                    Gap(18),
                    Text(
                      "Date of birth",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),

                    Gap(7),
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
                    ),
                    Gap(18),
                    Text(
                      "Nationality",
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),

                    Gap(7),
                    EditTextMyOwn(
                      obscureText: false,
                      Boardcolor: Color(0xFF7F23A8),
                      height: 50,
                      hintText: "Nigeria",
                      Suffixicon: Icons.keyboard_arrow_down,
                      IcononPressed: () {
                        // DateTimePicker(
                        //   type: DateTimePickerType.dateTimeSeparate,
                        //   dateMask: 'd MMM, yyyy',
                        //   initialValue: DateTime.now().toString(),
                        //   firstDate: DateTime(2000),
                        //   lastDate: DateTime(2100),
                        //   icon: Icon(Icons.event),
                        //   dateLabelText: 'Date',
                        //   timeLabelText: "Hour",
                        //
                        // );

                        //TODO:DATE PICKER
                        setState(() {
                          CalendarDatePicker
                            (
                            initialDate: DateTime(2000),
                            firstDate:  DateTime(2001),
                            lastDate: DateTime(2006),
                            onDateChanged: (value) {

                            },
                          );
                        });

                      },
                      Boxcolor: Colors.white,
                      Hintcolor: Color(0xFF9B9B9B),

                    ),
                    const Gap(30),
                    ContainerBtn(
                      onTap: () {
                        Get.to(bioPageViewTwo());
                      },
                      radius: 10,
                      Textdata: "Proceed",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      Boxcolor: Color(0xFF7F23A8),
                      fontSize: 16,
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ),)


    );
  }
}

