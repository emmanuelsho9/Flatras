import 'package:flatra/Wallet/walletPage/buyCrypto.dart';
import 'package:flatra/features/home/models/cardList.dart';
import 'package:flatra/features/home/models/categories.dart';
import 'package:flatra/features/home/screens/cardWidget.dart';
import 'package:flatra/features/home/screens/section_lists.dart';
import 'package:flatra/features/home/screens/widgets.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../common_widgets/testing/anotherTrade.dart';
import '../features/buy_crypto/screens/buy_screen.dart';
import '../setting/User.dart';
import 'Buy/buyerListOfShowBottonSheet.dart';
import 'GiftCard/Gift Card.dart';
import 'Receive/Receive.dart';
import 'Send/Send Crypto.dart';
import 'Swap/SwapHome.dart';
import 'Walletsection_lists.dart';
import '../common_widgets/myCommentWidgets/walletCategories.dart';

class wallet extends StatefulWidget {
  const wallet({super.key});

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  late PageController _pageController;
  final pageController2 = PageController();
  var selected = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/15,),
             WelcomeHeader(name: "Wallet",welcome: ""),
            const Gap(47),
            const WalletSection(),
            const Gap(37),
            Row(
              children: [
                InkWell(onTap: () {
                  // Get.bottomSheet(SingleChildScrollView(
                  //   child: Container(
                  //     height: 467,
                  //     decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Stack(
                  //                   children: [
                  //                     Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                  //                         fit: BoxFit.cover),
                  //                     Column(
                  //                       mainAxisAlignment: MainAxisAlignment.center,
                  //                       crossAxisAlignment: CrossAxisAlignment.center,
                  //                       children: [
                  //                         const Gap(60),
                  //                         Container(
                  //                           height: 100,
                  //                           width: 100,
                  //                           decoration: BoxDecoration(
                  //                               borderRadius: BorderRadius.circular(50),
                  //                               color: Colors.white),
                  //                           child: Stack(children: [
                  //                             Align(
                  //                               alignment: Alignment.center,
                  //                               child: Lottie.asset(
                  //                                   "assets/lottie/119996-coffetti-ev.json",
                  //                                   fit: BoxFit.cover),
                  //                             ),
                  //                             Align(
                  //                                 alignment: Alignment.center,
                  //                                 child: Image.asset("assets/png/tick.png"))
                  //                           ]),
                  //                         ),
                  //                         const Gap(20),
                  //                         Text(
                  //                           "Congratulations!",
                  //                           style: Styles.headLineStylel.copyWith(
                  //                             color: Colors.white,
                  //                           ),
                  //                         ),
                  //                         Text(
                  //                           "An Escrow invitation has beeen sent to \n"
                  //                               "abc@gmail.com. You will be notified as soon as the\n"
                  //                               "payment has been made.",
                  //                           style: Styles.textStyle.copyWith(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.normal,
                  //                               fontSize: 14),
                  //                           textAlign: TextAlign.center,
                  //                         ),
                  //                         const Gap(16),
                  //                         ContainerBtn(radius: 10, Textdata: "Proceed",
                  //                           color: const Color(0xFFFFFFff),
                  //                           Boxcolor: const Color(0xFF10F2EA),
                  //                           onTap: () {
                  //                             //TODO: leave page
                  //                             Get.to(const SettingUser());
                  //                           },
                  //                         ),
                  //
                  //                       ],
                  //                     ),
                  //                   ]),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ));
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => buyerListOfShowBottonSheet());
                },child: WalletIconForBuy(img: "assets/images/img_14.png", title: "Buy")),
                const  Gap(11),
                InkWell(
                    onTap: () {
                      Get.to(anoterTrade());
                    },child:
                WalletIconForBuy(img: "assets/images/img_15.png", title: "Send")),
                const  Gap(11),
                InkWell(onTap: () {
                 Get.to(Recieve());
                },child:
                WalletIconForBuy(img: "assets/images/img_16.png", title: "Receive")),
                const  Gap(11),
                InkWell(
                    onTap: () {
                      Get.to(SwapHome());
                    },
                    child: WalletIconForBuy(img: "assets/images/img_17.png", title: "Swap")),
                const  Gap(11),
                InkWell(onTap: () {
                 Get.to(GiftCard());
                },child: WalletIconForBuy(img: "assets/images/img_18.png", title: "Gift Card")),

              ],
            ),
            const Gap(20),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: walletcategories.length,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                        pageController2.jumpToPage(index);
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            walletcategories[index],
                            style: Styles.textStyle.copyWith(
                                color: index == selected
                                    ? kPrimaryColor
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Gap(2),
                        Visibility(
                          visible: index == selected,
                          child: Container(
                            height: 3,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                  );

                }
              ),
            ),
            Expanded(
                child:
                WSectionList(
                    selected: selected,
                    callback: (int index) {
                      setState(() {
                        selected = index;
                      });
                    },
                    pageController: pageController2)
            )
          ],
        ),
      ),
    );
  }
}

class WalletIconForBuy extends StatelessWidget {
   WalletIconForBuy({
    Key? key, required this.img, required this.title,
  }) : super(key: key);

  String img;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color:  Color(0xFF7F23A8),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Image.asset(img, scale: 2,),

        ),
        Text(title,
            style: Styles.textStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14)
        ),
      ],
    );
  }
}

class WalletSection extends StatelessWidget {
  const WalletSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Wallet Balance",
              style: Styles.textStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18)
          ),
          const Gap(5),
          Text(NumberFormat.simpleCurrency(name: 'NGN').format(20000),
              style: Styles.textStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),

        ],
      ),
    );
  }
}

// Dot Indicators

//Cards Widget
