import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Text(
              "Join Millions of Crypto Owners Worldwide!",
              style: Styles.headLineStyle2
                  .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const Gap(20),
            CustomWidgets.textField("Email",
                suffixIcon: Ionicons.mail, hint: "Email"),
            CustomWidgets.textField("Password",
                suffixIcon: Ionicons.eye_off,
                hint: "Password",
                isPassword: true),
            const Gap(40),
            PrimaryButtonWidget(
                isBorder: true,
                size: size,
                text: "Proceed",
                press: () => Get.toNamed(RouteHelpers.getBottomNavBarRoute())),
            const Gap(10),
            Text(
              "Forgot Password?",
              style: Styles.textStyle
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const Gap(10),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "Don't have an Account? ",
                style: Styles.textStyle.copyWith(color: Colors.black),
              ),
              Text(
                "Create Account",
                style: Styles.textStyle.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
            ]),
            const Gap(10),
            LoginAttributesWidget(
                text: "Keep Device Logged in for upto 5 Minutes"),
            const Gap(60),
            Center(
                child: Image(image: AssetImage("assets/png/Fingerprint.png"))),
            const Gap(20),
            Center(
              child: Text(
                "Login with Biometric",
                style: Styles.textStyle
                    .copyWith(color: Colors.black, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )),
    );
  }
}
