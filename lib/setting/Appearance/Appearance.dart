import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/styles.dart';

class Appearance extends StatefulWidget {
  const Appearance({Key? key}) : super(key: key);

  @override
  State<Appearance> createState() => _AppearanceState();
}

class _AppearanceState extends State<Appearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Appearance", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: screenResponisive(scaffold: Container(
        height: MediaQuery.of(context).size.height*1.0,
        width:  MediaQuery.of(context).size.width*1.0,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Column(
                children: [
                  AppearanceSelector(
                    gapDown: 20,
                    Bordercolor: Color(0xFF7F23A8),
                    heading: "Use system color",
                    subHeading: "Use the system default color",
                    elevation: 0,
                  ),
                  Gap(10),
                  AppearanceSelector(
                    gapDown: 20,
                    Bordercolor: Color(0xFFE7E7E7),
                    heading: "Dark Mode",
                    subHeading: "Set the app appearance to a dark theme",
                    elevation: 0,
                  ),
                  Gap(10),
                  AppearanceSelector(
                    gapDown: 20,
                    Bordercolor: Color(0xFFE7E7E7),
                    heading: "Light Mode",
                    subHeading: "Set the app appearance to a light theme",
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),)

    );
  }
}



class AppearanceSelector extends StatelessWidget {
  AppearanceSelector({
    Key? key, required this.Bordercolor, this.elevation, this.IcononPressed,
    required this.heading, required this.subHeading,
    required this.gapDown,
  }) ;
  Color Bordercolor = const Color(0xFF000000);
  double? elevation;
  Function()? IcononPressed;
  String heading;
  String subHeading;
  double gapDown;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Bordercolor)
      ),
      child: Card(
        elevation: elevation,
        child: Row(
          children: [
            IconButton(onPressed: IcononPressed,icon: const Icon(Icons.circle_outlined),),
            Gap(17.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 Gap(gapDown),
                Text(
                  "$heading",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "$subHeading",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}




