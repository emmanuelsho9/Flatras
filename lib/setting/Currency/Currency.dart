import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/home/controllers/coin_data_controller.dart';
import '../../utils/styles.dart';
import 'classForCurrency.dart';
import 'countryList/ListWidgets.dart';

class Currency extends StatelessWidget {
   Currency({Key? key}) : super(key: key);

  List<ClassForCurrency>currenyList =[
    ClassForCurrency(unitedStatesDollarUsd: "United States Dollar (USD)",
        currentExcahngeCurrency: "Current Excahnge Currency"),

  ];

   final CoinDataController coinDataController = Get.put(CoinDataController());


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Currency", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Container(
          child: ListView.builder(itemCount: currenyList.length,itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.bottomSheet(SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 490,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                          child: Column(
                            children: [
                              Text("Select Exchange Currency", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
                              Gap(9),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4, right: 4),
                                  child: TextField(
                                    onChanged: (value) =>
                                        coinDataController.getFilteredCoinData(value),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search Currency...',
                                        hintStyle: TextStyle(color: Colors.grey[700]),
                                        prefixIcon: const Icon(
                                          Icons.search_rounded,
                                          color: Colors.black,
                                        ),
                                        prefixIconColor: Colors.black),
                                  ),
                                ),
                              ),
                              Expanded(child: CountryListW()),

                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currenyList[index].currentExcahngeCurrency,
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Gap(8),
                  Text(currenyList[index].unitedStatesDollarUsd,
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            );
          },),

        ),
      ))

    );
  }
}

















class AppearanceSelector extends StatelessWidget {
  AppearanceSelector({
    Key? key, required this.Bordercolor,  this.IcononPressed,
    required this.heading, required this.subHeading,
  }) ;
  Color Bordercolor = const Color(0xFF000000);
  Function()? IcononPressed;
  String heading;
  String subHeading;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 70,
      width: 320,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Bordercolor)
      ),
      child: ListView.builder(itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children:  [
                const Gap(20),
                Text("$heading", style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
                const Gap(8),
                Text("$subHeading", style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),),

              ],
            )
          ],
        );

      },
      ),
    );
  }
}
