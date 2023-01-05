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
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common_widgets/testing/homeTap.dart';
import '../../Escrow/Escrow Details.dart';
import '../../Escrow/Escrow Information.dart';
import 'Messages/Messages.dart';
import 'homePageView.dart';

class HomeFlatra extends StatefulWidget {
  const HomeFlatra({super.key});

  @override
  State<HomeFlatra> createState() => _HomeFlatraState();
}

class _HomeFlatraState extends State<HomeFlatra> {
  late PageController _pageController;
  final pageController2 = PageController();
  var selected = 0;
  TabController? _Tabcontroller;
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(EscrowInformation());
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(80),
            WelcomeHeader(name: "Flatra Escrow", welcome: ""),
            const Gap(20),
            Expanded(child: HomePageView()),


            // Expanded(child: TapHome())

          ],
        ),
      ),
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
                  fontSize: 18)),
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
class DotIndicators extends StatelessWidget {
  const DotIndicators({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SmoothPageIndicator(
        controller: _pageController,
        count: cardList.length,
        axisDirection: Axis.horizontal,
        effect: const ExpandingDotsEffect(
          spacing: 5.0,
          radius: 10,
          dotWidth: 10.0,
          dotHeight: 8.0,
          dotColor: Colors.grey,
          activeDotColor: kPrimaryColor,
        ),
      ),
    );
  }
}

//Cards Widget
class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      child: Row(
          children: cardList
              .map((singleCard) => CardWidget(cards: singleCard))
              .toList()),
    );
  }
}
