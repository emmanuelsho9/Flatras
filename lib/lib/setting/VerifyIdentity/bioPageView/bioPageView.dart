import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:calender_picker/calender_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../../../utils/styles.dart';
import 'Phone Number.dart';

class bioPageViewOne extends StatefulWidget {
  const bioPageViewOne({Key? key}) : super(key: key);

  @override
  State<bioPageViewOne> createState() => _bioPageViewOneState();
}

class _bioPageViewOneState extends State<bioPageViewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Container(
           height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Gap(63),
              Image.asset("assets/images/img_5.png",width: 72, height: 6,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(22),
                  Text(
                    "Bio Data",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),

                  Gap(6),
                  Text(
                    "Below is a list of requirements for your account to be\n"
                        "verified:",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                  Gap(32),
                  Text(
                    "First Name",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),

                  Gap(7),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFF7F23A8),
                    width: double.infinity,
                    height: 50,
                    Boxcolor: Colors.white,
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(18),
                  Text(
                    "Last Name",
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),

                  Gap(7),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFF7F23A8),
                    width: double.infinity,
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
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFF7F23A8),
                    width: double.infinity,
                    height: 50,
                    hintText: "YYYY/MM/DD",
                    Suffixicon: Icons.calendar_month,
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
                    width: double.infinity,
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
                  Gap(30),
                  ContainerBtn(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bioPageViewTwo(),));
                    },
                    radius: 10,
                    Textdata: "Proceed",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    Boxcolor: Color(0xFF7F23A8),
                    fontSize: 16,
                  ),
                  Gap(30),

                ],
              ),
            ],
          ),
        ),
      ),)


    );
  }
}

