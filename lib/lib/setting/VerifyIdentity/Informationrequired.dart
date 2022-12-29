import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../../utils/styles.dart';
import 'BioData.dart';

class InformationRequired extends StatelessWidget {
  const InformationRequired({Key? key}) : super(key: key);

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
      body: screenResponisive(scaffold: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Gap(100),
              Text(
                "Information required",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const Gap(12),
              Text(
                "Below is a list of requirements for your account to be \n verified:",
                style: Styles.headLineStyle2
                    .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              Gap(19),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Column(
                  children: [
                    Row(
                      children:  [
                        Icon(Icons.circle, size: 7,color: Colors.black),
                        Text(
                          " Bio Data",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children:  [
                        Icon(Icons.circle, size: 7,color: Colors.black),
                        Text(
                          " Phone Number",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),

                      ],
                    ),
                    Row(
                      children:  [
                        Column(
                          children: const [
                            Icon(Icons.circle, size: 7,color: Colors.black),
                            Gap(15)
                          ],
                        ),
                        Text(
                          " Means of Identification eg. ID Card,\n "
                              "Drivers Licence or Passport",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.start,
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              const Gap(39),
              ContainerBtn(
                onTap: () {
                  Get.to(BioData());
                },
                radius: 10,
                Textdata: "Proceed",
                color: Colors.white,
                fontWeight: FontWeight.w600,
                Boxcolor: Color(0xFF7F23A8),
                fontSize: 16,
              ),
              const Gap(39),

            ],
          ),
        ),
      ),)


    );
  }
}
