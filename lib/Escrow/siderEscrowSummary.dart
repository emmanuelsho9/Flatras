import 'package:flutter/material.dart';

import '../common_widgets/testing/classForEscriwSummary.dart';

class Milestones extends StatelessWidget {
   Milestones({Key? key}) : super(key: key);
  
  List<MilestoneN>m=[
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
    MilestoneN(name: "Name...", Milestone: "Milestone 1", date: "20/5/2022", price: "\$5,000"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: m.length, itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: LayoutBuilder(builder: (p0, p1) {
            return  Container(
              width:  p1.maxHeight+10,
              height: p1.maxHeight+10,
              decoration: BoxDecoration(
                  color: Color(0xFFF6E3FF),
                  borderRadius: BorderRadius.circular(10)

              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 12, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(m[index].Milestone, style: const TextStyle(fontSize: 12, color: Color(0xFF7F23A8), fontWeight: FontWeight.w400) ),
                      ],
                    ),
                    const SizedBox(height: 9,),
                    Text(m[index].name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                    const SizedBox(height: 6,),
                    Text(m[index].price, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 21,),
                    Text(m[index].date, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            );
          },),
        );
      },),
    );
  }
}
