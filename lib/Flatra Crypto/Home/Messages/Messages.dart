import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Budget/Terms.dart';
import '../Budget/Transaction Info.dart';
import '../Budget/dispute.dart';
import 'Bryan.dart';


class Messages extends StatefulWidget {
  Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(child: Text("Messages", style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400
          ),)),
        leading: InkWell(onTap: () {
          Get.back();
        },child: Image.asset("assets/png/img_7.png", scale: 2.5,)),
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0, right: 22),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Select Token",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        borderSide: BorderSide(color: Color(0xFF7F23A8) )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF7F23A8) )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF7F23A8) )

                      )

                    ),
                  ),
                ),
              ),
              Gap(10),
              Expanded(
                child: TabBarView(

                  children: [
                    Bryan(),

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
