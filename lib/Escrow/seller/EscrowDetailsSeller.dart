import 'package:flatra/Escrow/siderEscrowSummary.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../payment/Payment Option.dart';
import 'congrualtion.dart';


class EscrowDetailsSeller extends StatelessWidget {
  const EscrowDetailsSeller({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Escrow Summary", style: TextStyle(
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
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19.0,right: 19),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Escrow Details", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                    const Gap(15),
                    const sellerNameAndEmail(),
                    const Gap(10),

                    const amountMilestones(),
                    const Gap(10),
                    const descroptionInfo(),
                    const Gap(29),
                  ],
                ),
              ),
              Flexible(child: Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Milestones(),
              )),
              const Gap(15),

               const Flexible(child: transcationFeeProcess()),
              const Flexible(

                  child: Gap(10))

            ],
          ),
        ),
      ),


    );
  }
}

class transcationFeeProcess extends StatelessWidget {
  const transcationFeeProcess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19.0,right: 19),
      child: Column(
        children: [
          Row(
            children: const [
              Text("Transaction Fee  ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7F23A8)
                ),
              ),
              Text(" X%",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const Gap(41),
          ContainerBtn(radius: 10, Textdata: "Proceed",
            color: const Color(0xFFFFFFff),
            Boxcolor: const Color(0xFF7F23A8),
            onTap: () {
              Get.to(const sellerCongratulation());
            },
          ),
        ],
      ),
    );
  }
}

class descroptionInfo extends StatelessWidget {
  const descroptionInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      decoration: BoxDecoration(
          color: Color(0xFFF6E3FF),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Description/Information",  style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF7F23A8),
            ),),
            Gap(10),
            Row(
              children:  [
                Container(
                  child: const Text("Tetologi. Plaresavis. Solhybrid. Grönt körfält.\n"
                      "Fotonetik. fFil sti Reasade. Gona. Vintage.Nar. \n"
                      "Onde. Kokana. Fidat. Bem\n"
                      "nt.ae Refiering.", textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF7F23A8),
                    ),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class amountMilestones extends StatelessWidget {
  const amountMilestones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 78,
      decoration: BoxDecoration(
          color: Color(0xFFF6E3FF),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
        const  Gap(19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Amount", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("5,000", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
          const  Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Milestones", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("3", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}

class sellerNameAndEmail extends StatelessWidget {
  const sellerNameAndEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF6E3FF),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        children: [
          const Gap(19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Seller Name", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("Seller Name", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
        const  Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Seller Email", style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF7F23A8),
              ),),
              Text("abc@gmail.com", style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
