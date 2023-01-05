import 'package:cached_network_image/cached_network_image.dart';
import 'package:flatra/Escrow/Buyer%20Requirements.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../Wallet/Buy/CoinsCardBuyer.dart';
import '../../Wallet/Buy/buyerListOfShowBottonSheet.dart';
import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../features/home/controllers/coin_data_controller.dart';
import '../../features/home/models/coin_data.dart';
import '../../setting/Appearance/Appearance.dart';
import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../Escrow Details.dart';
import 'EscrowDetailsSeller.dart';


class SellerTermsofTrade extends StatefulWidget {
   SellerTermsofTrade({Key? key}) : super(key: key);

  @override
  State<SellerTermsofTrade> createState() => _SellerTermsofTradeState();
}

class _SellerTermsofTradeState extends State<SellerTermsofTrade> {

  final CoinDataController LcoinDataController = Get.put(CoinDataController());

  DateTime _selectedDate = DateTime.now();


  // final CoinDataController result = Get.put(CoinDataController());

  var stringFromActivity;

  Future _startActivity() async {

     var results = await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => RetuernContentbuyerListOfShowBottonSheet());

    if (results != null) {
      setState(() {
         stringFromActivity = results[0];
        print(stringFromActivity);
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Terms of Trade", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: Column(
          children: [
            IconButton(onPressed: (){
              Get.back();
            },
                icon: const
                Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 19.0,right: 19),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Flexible(
                        child: Text("Amount", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),),
                      ),
                    ],
                  ),
                  const   Gap(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Flexible(
                        flex: 2,
                        child: EditTextMyOwn(
                          obscureText: false,
                          Boardcolor: Color(0xFFF5F5F5),
                          height: 50,
                          hintText: "0.00",
                          IcononPressed: () {
                            print("tapped");
                          },
                          Boxcolor: const Color(0xFFF5F5F5),
                          Hintcolor: const Color(0xFF9B9B9B),

                        ),
                      ),

                      Flexible(
                        child: InkWell(
                          onTap: () async {
                            _startActivity();

                           },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color:  Color(0xFF7F23A8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Row(
                              children:  [
                                const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                const  Gap(3),
                                 Text(stringFromActivity.toString(), style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14
                                ),),
                                const  Gap(5),
                                Image.asset("assets/png/img_1.png", width: 14, height: 14,),
                              ],
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const  Gap(22),
                  Row(
                    children: const [
                      Text("Transaction Fee: X%", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF7F23A8)
                      ),),
                    ],
                  ),
                  const   Gap(22),
                  Row(
                    children: const [
                      Text("How do you want to make payment?", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),),
                    ],
                  ),
                  const   Gap(13),
                  AppearanceSelector(
                    gapDown: 10,
                    Bordercolor: Color(0xFF7F23A8),
                    heading: "By Milestones",
                    subHeading: "Divide the project into smaller segments and pay\n"
                        "upon completion of milestone.",
                    elevation: 0,
                  ),
                  const    Gap(10),
                  AppearanceSelector(
                    gapDown: 10,
                    Bordercolor: Color(0xFFEDEDED),
                    heading: "One time Payement",
                    subHeading: "Make a one-time payment into Flatra, \n "
                        "funds will be dibursed upon completion. ",
                    elevation: 0,
                  ),
                  Gap(51),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Milestone 1", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF7F23A8)
                      ),),

                    ],
                  ),

                  const   Gap(10),
                  Row(
                    children:  const [
                      Text("Description", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(6),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. abc@gmail.com",
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  Gap(9),
                  Row(
                    children: const [
                      Text("Amount", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(22),
                  EditTextMyOwn(
                    obscureText: false,
                    Boardcolor: Color(0xFFF5F5F5),
                    height: 50,
                    hintText: "eg. 5000",
                    Boxcolor: Color(0xFFF5F5F5),
                    Hintcolor: Color(0xFF9B9B9B),

                  ),
                  const Gap(9),
                  Row(
                    children: const [
                      Text("Due Date (optional)", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                    ],
                  ),
                  const Gap(22),
                  ContainerDrop(
                    onTap: () {
                    },
                    radius: 10,
                    IcononPressed: () async {
                      DateTime? dateTime = await showDatePicker(context: context,
                          initialDate: _selectedDate,
                          firstDate: DateTime(1900),
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                  primary: Color(0xFF7F23A8), // <-- SEE HERE
                                  onPrimary: Colors.white, // <-- SEE HERE
                                  onSurface: Color.fromARGB(255, 66, 125, 145), // <-- SEE HERE
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    primary: Color(0xFF7F23A8), // button text color
                                  ),
                                ),
                              ),
                              child: child!,
                            );;
                          },
                          lastDate: DateTime(3000));
                      if(dateTime!=null){
                        setState(() {
                          _selectedDate=dateTime;
                        });
                      }



                    },
                    icon: Icons.calendar_month,
                    Textdata: "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    Boxcolor: Colors.white,
                    fontSize: 16,
                  ),
                  Gap(23),
                  Row(
                    children: [
                      IconButton(onPressed: () => null,
                          icon: const Icon(Icons.add_circle_rounded, size: 30,
                            color: Color(0xFF7F23A8),)),


                      const Text("Add Milestone"),
                    ],
                  ),

                  const Gap(40),
                  ContainerBtn(radius: 10, Textdata: "Proceed",
                    color: Color(0xFFFFFFff),
                    Boxcolor: Color(0xFF7F23A8),
                    onTap: () {
                      Get.to(EscrowDetailsSeller());
                    },
                  ),
                  const Gap(78),

                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}


class ContainerDrop extends StatelessWidget {
  ContainerDrop({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    required this.icon,
    this.onTap,
    this.IcononPressed
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;
  Function()? IcononPressed;

  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: Boxcolor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color:const Color(0xFF7F23A8) )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$Textdata", style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color
                ),),
                IconButton(onPressed: IcononPressed, icon:  Icon(icon))
              ],
            ),
          ),
        ),

      ),
    );
  }
}





class RetuernContentbuyerListOfShowBottonSheet extends StatelessWidget {
  RetuernContentbuyerListOfShowBottonSheet({super.key});
  final CoinDataController coinDataController = Get.put(CoinDataController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          color: kPrimaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            const Gap(30),
            Text(
              "Select a Token",
              style: Styles.textStyle
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            const Gap(10),
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
                      hintText: 'Enter a Token name...',
                      hintStyle: TextStyle(color: Colors.grey[700]),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ),
                      prefixIconColor: Colors.black),
                ),
              ),
            ),
            const Gap(10),
            SizedBox(
              height: 300,
              child: Obx(
                    () => coinDataController.checkLoadingFilter().isTrue
                    ? const Center(
                  child: CircularProgressIndicator(),
                )
                    : ListView.builder(

                  scrollDirection: Axis.vertical,
                  itemCount: coinDataController.coinDataFilterList.length,
                  itemBuilder: (context, index) {
                    return TTCoinList(coin: coinDataController.coinDataFilterList[index]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






class TTCoinList extends StatelessWidget {
  const TTCoinList({
    Key? key,
    required this.coin,
  }) : super(key: key);

  final CoinData coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          Get.back(

            result: [coin.name, coin.currentPrice],
          );
        },


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: CachedNetworkImage(
                    imageUrl: coin.image.toString(),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                        CircularProgressIndicator(
                            value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                const Gap(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(coin.name,
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14)),
                    Text(coin.symbol.toUpperCase(),
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                    NumberFormat.simpleCurrency(name: 'NGN')
                        .format(coin.currentPrice),
                    style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 12)),
                Text(
                    coin.priceChangePercentage24H.toDouble() < 0
                        ? '-' "${coin.priceChangePercentage24H.toDouble()}%"
                        : '+' "${coin.priceChangePercentage24H.toDouble()}%",
                    style: Styles.headLineStyle3.copyWith(
                        color: coin.priceChangePercentage24H.toDouble() < 0
                            ? Colors.red
                            : Colors.green,
                        fontWeight: FontWeight.normal,
                        fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

