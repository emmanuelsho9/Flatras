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

import 'congrForPin.dart';

class PinChange extends StatefulWidget {
  const PinChange({super.key});

  @override
  State<PinChange> createState() => _PinChangeState();
}

class _PinChangeState extends State<PinChange> {
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
                            'Set Transaction Pin',
                            style: Styles.headLineStyle2.copyWith(
                                fontSize: 20.sp, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text:
                                "Kindly set a pin for every of your transaction  ",
                                style: TextStyle(
                                  color: Styles.grayColor,
                                  fontSize: 16.0,
                                ),
                              ),
                            ]),
                          ),
                          const Gap(10),
                          OtpTextField(
                            numberOfFields: 4,
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
                              press: () => Get.to(CongratulationPin())),
                          const Gap(10),
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
