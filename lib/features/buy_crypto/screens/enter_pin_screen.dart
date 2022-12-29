import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../common_widgets/enter_pin_pad.dart';

class EnterPinScreen extends StatelessWidget {
  const EnterPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Get.back(),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Enter Pin to Confirm",
            style: Styles.textStyle
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Input Pin",
                textAlign: TextAlign.center,
                style: Styles.textStyle,
              ),
              const Gap(30),
              SizedBox(
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildCodeNumberBox(""),
                    buildCodeNumberBox(""),
                    buildCodeNumberBox(""),
                    buildCodeNumberBox(""),
                  ],
                ),
              ),
              const Gap(30),
             // EnterPinScreen()

              EnterPinPad(onNumberSelected: (String j) {

              },),
             const Gap(38),              ContainerBtn(radius: 10, color: Colors.white, Textdata: "Proceed", Boxcolor: const Color(0xFF7F23A8),)

            ],
          ),
        ));
  }
}
