import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import '../Budget/Terms.dart';
import '../Budget/Transaction Info.dart';
import '../Budget/dispute.dart';
import 'allView.dart';


class Budget extends StatefulWidget {
  Budget({Key? key}) : super(key: key);

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text("Buyer", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon:const Icon(Icons.arrow_back_ios_outlined, color: Colors.black,size: 20,) ),
        ),
        backgroundColor: Colors.white,
        body: screenResponisive(scaffold: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Padding(
              padding: const EdgeInsets.only(left: 19.0, right: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Status: ", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600,
                          color: Color(0xFF7F23A8)
                      ),),
                      Text("Pending", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                  const Text("Budget", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),),
                  const Text("5,000.00 USD", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25
                  ),),
                  const  Gap(33),
                  Row(
                    children: [
                      InEscrow(Price: "\$5,000", title: "In Escrow"),
                      const Gap(8),
                      InEscrow(Price: "N00", title: "Paid"),
                    ],
                  ),
                  const  Gap(40),
                  const TabBar(
                    unselectedLabelColor: Colors.black,
                    labelColor: Color(0xFF7F23A8),
                    labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                    ),
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    labelPadding: EdgeInsets.fromLTRB(5, 10, 5, 9),
                    indicatorColor: Color(0xFF7F23A8),
                    indicatorWeight: 2,

                    physics: AlwaysScrollableScrollPhysics(),
                    tabs: [
                      Text("Transaction Info"),
                      Text("Terms"),
                      Text("Dispute", style: TextStyle(
                          fontSize: 11.5
                      ),),

                    ],

                  ),

                ],
              ),
            ),
            Expanded(
              child: TabBarView(

                children: [
                  TransactionInfo(),
                  Terms(),
                  Dispute(),
                ],
              ),
            )

          ],
        ),)

      ),
    );
  }
}

class InEscrow extends StatelessWidget {
   InEscrow({
    Key? key, required this.Price, required this.title
  }) : super(key: key);

  String title;
  String Price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration:  const BoxDecoration(
        color:  Color(0xFF7F23A8),
        borderRadius:  BorderRadius.all(Radius.circular(5))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0, top: 26, bottom: 26, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(title, style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              color: Colors.white
            ),),
            Text(Price, style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
            ),),

          ],
        ),
      ),
    );
  }
}
