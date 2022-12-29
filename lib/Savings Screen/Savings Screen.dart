import 'package:flatra/Savings%20Screen/savingTaps.dart';
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

import '../Wallet/Buy/buyerListOfShowBottonSheet.dart';
import '../Wallet/GiftCard/Gift Card.dart';
import '../Wallet/Receive/Receive.dart';
import '../Wallet/Send/Send Crypto.dart';
import '../Wallet/Walletsection_lists.dart';
import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../features/buy_crypto/screens/buy_screen.dart';
import '../setting/User.dart';
import '../common_widgets/myCommentWidgets/walletCategories.dart';

class SavingsScreenHome extends StatefulWidget {
  const SavingsScreenHome({super.key});

  @override
  State<SavingsScreenHome> createState() => _SavingsScreenHomeState();
}

class _SavingsScreenHomeState extends State<SavingsScreenHome> {
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

  List SavingScreen = ['Active', 'Completed',];


  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width*1,
        height: MediaQuery.of(context).size.height*1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/15,),
                WelcomeHeader(name: "Savings",welcome: ""),
                const Gap(47),
                const WalletSection(),
                const Gap(40),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: SavingScreen.length,
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
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  SavingScreen[index],
                                  style: Styles.textStyle.copyWith(color: index == selected ? kPrimaryColor : Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Gap(2),
                              Visibility(
                                visible: index == selected,
                                child: Container(
                                  height: 3,
                                  width: 40,
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
              ],
            ),
          ),
            Expanded(
                child:
                savingTap(
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
