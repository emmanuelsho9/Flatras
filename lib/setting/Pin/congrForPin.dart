import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CongratulationPin extends StatelessWidget {
  const CongratulationPin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.85],
              colors: [kPrimaryColor, kPrimaryColor2])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Center(
            child: Stack(children: [
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
                    "Your have successfully create a transactional pin",
                    style: Styles.textStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(60),
                  const Gap(10),

                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
