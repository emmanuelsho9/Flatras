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
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common_widgets/testing/homeTap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          // Add your onPressed code here!
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.message),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: MediaQuery.of(context).size.height/15,),
             WelcomeHeader(name: "Oluwaseun", welcome: "Welcome"),
            const Gap(20),
            Cards(pageController: _pageController),
            const Gap(8),
            DotIndicators(pageController: _pageController),
            const Gap(10),
            const WalletSection(),
            const Gap(20),
            // Expanded(child: TapHome())

            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
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
                            categories[index],
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
                child: SectionList(
                    selected: selected,
                    callback: (int index) {
                      setState(() {
                        selected = index;
                      });
                    },
                    pageController: pageController2))
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
        effect: ExpandingDotsEffect(
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
