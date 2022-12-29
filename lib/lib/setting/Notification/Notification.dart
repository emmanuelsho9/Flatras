import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../../utils/styles.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Notification", style: TextStyle(
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                AppearanceSelector(
                  GapIcon: 51,
                  Bordercolor: Colors.white,
                  heading: "Enable Push Notification",
                  subHeading: "You will be sent push notifications",
                  elevation: 0,
                ),
                AppearanceSelector(
                  GapIcon: 36,
                  Bordercolor: Colors.white,
                  heading: "News on Crypto",
                  subHeading: "Get notified about the latest happenings\n "
                      "in the crypto market.",
                  elevation: 0,
                ),
                AppearanceSelector(
                  GapIcon: 36,
                  Bordercolor: Colors.white,
                  heading: "Token Rates",
                  subHeading: "Get notified about the latest happenings\n "
                      "in the crypto market.",
                  elevation: 0,
                ),
              ],
            ),
          ),
        ),
      ),)

    );
  }
}



class AppearanceSelector extends StatefulWidget {
  AppearanceSelector({
    Key? key, required this.Bordercolor, this.elevation, this.IcononPressed,
    required this.heading, required this.subHeading, required this.GapIcon,
  }) ;
  Color Bordercolor = const Color(0xFF000000);
  double? elevation;
  Function()? IcononPressed;
  String heading;
  String subHeading;
  double GapIcon;

  @override
  State<AppearanceSelector> createState() => _AppearanceSelectorState();
}

class _AppearanceSelectorState extends State<AppearanceSelector> {
  bool switchOn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: widget.Bordercolor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Gap(20),
              Text(
                "${widget.heading}",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const Gap(9),
              Text(
                "${widget.subHeading}",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),


            ],
          ),
          Gap(widget.GapIcon),
          Container(
            height: 20,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  switchOn==true?const Color(0xFF993FC0):const Color(0xFFD9D8DA )
                          ),
            child: Switch(inactiveTrackColor: const Color(0xFFD9D8DA ),
              inactiveThumbColor: Colors.black ,
              activeColor: const Color(0xFF6A1C8D),
              activeTrackColor: const Color(0xFF993FC0),value:
            switchOn, onChanged: (value) {
              setState(() {
                switchOn==true?switchOn=false:switchOn=true;
                switchOn=value;
              });

            },),
          )
        ],
      ),
    );
  }
}
