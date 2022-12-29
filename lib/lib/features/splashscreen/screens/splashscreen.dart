import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flatra/constants/common_strings.dart';
import 'package:flatra/constants/image_strings.dart';
import 'package:flatra/features/onboarding/lets_begin.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: AnimatedSplashScreen(
          duration: 3000,
          splash: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(kAppLogo),
              Text(
                kAppName,
                style: Styles.headLineStylel
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w800),
              )
            ],
          ),
          nextScreen: const LetBeginScreen(),
          backgroundColor: kPrimaryColor,
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
