import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Budget/Terms.dart';
import '../Budget/Transaction Info.dart';
import '../Budget/dispute.dart';
import 'Bryan.dart';
import 'chat.dart';


class chatFeature extends StatefulWidget {
  chatFeature({Key? key}) : super(key: key);

  @override
  State<chatFeature> createState() => _chatFeatureState();
}

class _chatFeatureState extends State<chatFeature> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:  Row(
            children:  [
              Column(
                children: [
                  Gap(5),
                  CircleAvatar(
                    backgroundColor:Colors.black,
                    radius: 25,
                    child: Image.asset("assets/png/img_10.png", scale: 1.5,),

                  ),
                ],
              ),
              const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Bryan",
                    style:  TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600,color: Colors.black
                    ),),
                    Text("Online",
                    style:  TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400,color: Color(0xFFB8B0B0)
                    ),),
                  ],
                ),


            ],
          ),
          leading: InkWell(onTap: () {
            Get.back();
          },child: Image.asset("assets/png/img_3.png", scale: 2.5,)),
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Gap(10),
              Expanded(
                child: TabBarView(

                  children: [
                    chat(),

                  ],
                ),
              )

            ],
          ),
        ),
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
