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

import 'HistoryTapPage/historyTapPage.dart';


class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
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

  List SavingScreen = ['All', 'Completed',"Buy","Sell","Received","Withdraw","Swap"];

  final appbar = AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    title: const Text("History", style: TextStyle(
        fontWeight:FontWeight.w600,
        fontSize: 16,
        color: Colors.black
    ),),
    leading: Image.asset("assets/images/img_24.png", scale: 2,),
  );



  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar:appbar,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  SavingScreen[index],
                                  style: Styles.textStyle.copyWith(color: index == selected ? kPrimaryColor : Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                                ),
                              ),
                              const Gap(2),
                              Visibility(
                                visible: index == selected,
                                child: Container(
                                  height: 3,
                                  width: 60,
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
              HistoryTapPage(
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
    );
  }
}



// Dot Indicators

//Cards Widget
