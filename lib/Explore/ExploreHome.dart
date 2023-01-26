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
import '../Wallet/Walletsection_lists.dart';
import '../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../common_widgets/testing/anotherTrade.dart';
import '../features/buy_crypto/screens/buy_screen.dart';
import '../setting/User.dart';
import '../common_widgets/myCommentWidgets/walletCategories.dart';

class ExploreHome extends StatefulWidget {
  const ExploreHome({super.key});

  @override
  State<ExploreHome> createState() => _ExploreHomeState();
}

class _ExploreHomeState extends State<ExploreHome> {
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
            WelcomeHeader(name: "Explore",welcome: ""),
            const Gap(47),
            SizedBox(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Explorecategories.length,
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
                              Explorecategories[index],
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
            const Gap(20),
            InkWell(onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => buyerListOfShowBottonSheet());
            },
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color:  Color(0xFF7F23A8),width: 1)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color:  Color(0xFF7F23A8),width: 1)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color:  Color(0xFF7F23A8),width: 1)
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Select Token",
                  enabled: false,


                ),
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
