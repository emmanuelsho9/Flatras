import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LetBeginScreen extends StatelessWidget {
  const LetBeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.png"))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo
                  const Image(image: AssetImage("assets/images/logo.png")),
                  Text("Trade With Control",
                      style: Styles.headLineStyle2.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700)),
                  const Gap(80),
                  PrimaryButtonWidget(
                      isBorder: true,
                      size: size,
                      text: "Let's Begin",
                      press: () =>
                          Get.toNamed(RouteHelpers.getOnboardingRoute())),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account? ",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed(RouteHelpers.getLoginRoute()),
                        child: Text(
                          "Login",
                          style: Styles.textStyle.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
