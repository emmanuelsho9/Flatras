import 'package:flatra/common_widgets/custom_widgets.dart';
import 'package:flatra/helpers/routes_helper.dart';
import 'package:flatra/models/seed_phrase.dart';
import 'package:flatra/services/create_wallet_service.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pinput/pinput.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _initPageIndex = 0;
  int currentIndex = 0;
  bool pressedIcon = true;


  // SeedPhrase? parse;
  // bool isLoaded = false;

  @override
  void initState() {
    _pageController = PageController();
    // getData();
    super.initState();
  }

  // getData() async {
  //   parse = await CreateWalletService().createWallet();
  //   if (parse != null) {
  //     setState(() {
  //       isLoaded = true;
  //     });
  //   }
  // }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    // late var mnemonic = parse?.mnemonic.split(' ');
    // late var xpub = parse?.xpub.toString();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child:
                              dotIndicator(isActive: index == _initPageIndex),
                        ))
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                // physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _initPageIndex = index;
                  });
                },
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(120),
                      Text(
                        'Begin your crypto journey with millions of traders worldwide.',
                        style: Styles.headLineStyle2.copyWith(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(25),
                      //TODO: TEXT ON Onboard
                      CustomWidgets.textField("Fullname",
                          suffixIcon: Ionicons.person_circle_outline,
                          hint: "Fullname"),
                      const Gap(5),
                      CustomWidgets.textField("Email",
                          suffixIcon: Ionicons.mail,
                          hint: "Email"),
                      CustomWidgets.textField("Password",
                          suffixIcon: pressedIcon==true?Ionicons.eye_off:Icons.visibility,
                          hint: "Password",
                          IconOnPressed: () {
                            setState(() {
                              pressedIcon==true?pressedIcon=false:pressedIcon=true;

                            });
                          },
                          isPassword: pressedIcon),
                      const Gap(10),
                      PasswordAttributesWidget(
                          text: "Contains at least 8 Characters"),
                      const Gap(5),
                      PasswordAttributesWidget(
                          text: "Must contain a Symbol and a Letter"),
                      const Gap(30),
                      PrimaryButtonWidget(
                          size: size,
                          isBorder: false,
                          text: "Proceed",
                          press: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          }),
                      const Gap(30),
                      InkWell(
                        onTap: () => Get.toNamed(RouteHelpers.getLoginRoute()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account? ",
                                style: Styles.textStyle
                                    .copyWith(fontWeight: FontWeight.normal)),
                            Text(
                              "Login",
                              style: Styles.textStyle.copyWith(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const Gap(30),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "By selecting Proceed, you agree to our ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: "Terms & Conditions ",
                            style: TextStyle(
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "and ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                              text: "Privacy Statement",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  decoration: TextDecoration.underline,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('Tap Here onTap')),
                        ]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(120),
                      Text(
                        'Verify Email Address',
                        style: Styles.headLineStyle2.copyWith(
                            fontSize: 20.sp, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text:
                                "Kindly input the verification code that was sent to ",
                            style: TextStyle(
                              color: Styles.grayColor,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: " abcd@gmail.com",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      const Gap(10),
                      OtpTextField(
                        numberOfFields: 5,
                        borderColor: Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content:
                                      Text('Code entered is $verificationCode'),
                                );
                              });
                        }, // end onSubmit
                      ),
                      const Gap(25),
                      PrimaryButtonWidget(
                          isBorder: true,
                          size: size,
                          text: "Proceed",
                          press: () => Get.toNamed(
                              RouteHelpers.getCongratulationRoute())),
                      const Gap(10),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Resend Code",
                              style: Styles.textStyle
                                  .copyWith(fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class dotIndicator extends StatelessWidget {
  const dotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 5 : 4,
      width: isActive ? 38 : 18,
      decoration: BoxDecoration(
          color: isActive ? Colors.purple : Colors.black,
          borderRadius: BorderRadius.all(const Radius.circular(12))),
    );
  }
}
