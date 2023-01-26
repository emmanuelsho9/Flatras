import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../Active/ActiviteHistory.dart';

import 'classOfCompleted.dart';

class CompletedListUI extends StatelessWidget {
  CompletedListUI({Key? key}) : super(key: key);

  final List<ClassForCompleted>_b=[
    ClassForCompleted(title: "New Car", startPrice: "2,400,000", endPrice: "6,000,000", progressiveNumber: "100"),
    ClassForCompleted(title: "Laptop", startPrice: "364,000", endPrice: "400,000", progressiveNumber: "100"),
    ClassForCompleted(title: "Washing Machine", startPrice: "21,000", endPrice: "210,000", progressiveNumber: "100"),
    ClassForCompleted(title: "Laptop", startPrice: "364,000", endPrice: "400,000", progressiveNumber: "100"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5ECFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemCount: _b.length,itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Get.to(HistoryActivit(),
              // arguments: _b[index].endPrice.length);
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  HistoryActivit(title: _b[index].title,progressiveNumber: _b[index].progressiveNumber,
                    startPrice: _b[index].startPrice,
                    endPrice: _b[index].endPrice,)));
            },

            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_b[index].title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        Image.asset("assets/png/img_5.png",width: 72, height: 6,),

                      ],
                    ),
                    const SizedBox(height: 7,),
                    Text("${_b[index].progressiveNumber}%"),
                    const SizedBox(height: 7,),
                    StepProgressIndicator(
                      totalSteps: 100,
                      currentStep:int.parse(_b[index].progressiveNumber),
                      size: 8,
                      padding: 0,
                      selectedColor: Color(0xFF10F2EA),
                      unselectedColor: Color(0xFFDADADA),
                      roundedEdges: Radius.circular(10),

                    ),
                    const SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_b[index].startPrice, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        Text(_b[index].endPrice, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),

                      ],
                    ),
                    const SizedBox(height: 32,),



                  ],
                ),
              ),
            ),
          );
        },),
      ),
    );
  }
}
