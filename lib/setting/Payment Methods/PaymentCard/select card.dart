import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import '../../../utils/styles.dart';
import 'PaymentCard.dart';
import 'classOfCard.dart';

class SelectedCardTwo extends StatefulWidget {
  const SelectedCardTwo({Key? key}) : super(key: key);


  @override
  State<SelectedCardTwo> createState() => _SelectedCardTwoState();
}

class _SelectedCardTwoState extends State<SelectedCardTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("Payment Methods", style: TextStyle(
                  fontWeight:FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black
              ),),
            leading: IconButton(onPressed: (){
              Get.back();
            },icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)
            ),
        ),
     body: Padding(
       padding: const EdgeInsets.only(left: 15.0, right: 15),
       child: Center(
         child: Column(
           children: [
             const Gap(40),
 const             FittedBox(
               child: Text("Select the credit card\n"
                   "you wish to use to make purchases", textAlign: TextAlign.center, style: TextStyle(
                   fontWeight:FontWeight.w400,
                   fontSize: 14,
                   color: Colors.black
               ),),
             ),
             const Gap(40),
             Flexible(
                 fit: FlexFit.loose,
                 child: ListOfCard()),
             const Gap(0),
             Column(
               children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     InkWell(
                       onTap: () {
                         Get.to(PaymentCard());
                       },
                       child: Row(
                         children: const [
                           Icon(Icons.add_circle_outlined,color: Color(0xFF7F23A8),
                             size: 20,
                           ),
                           Text("Add Card", style: TextStyle(
                               fontWeight: FontWeight.w600,
                               fontSize: 16,
                               color: Color(0xFF7F23A8)
                           ),)
                         ],
                       ),
                     ),
                     InkWell(
                       onTap: () {
                         Get.defaultDialog(
                           radius: 10,
                           backgroundColor: Colors.black,
                           content: Column(
                             children: [
                               Gap(37),
                               const Text("Are you sure you \n want to delete this card?",
                                 textAlign: TextAlign.center, style: TextStyle(
                                 color: Colors.white
                               ),
                               ),
                              Gap(37),
                               InkWell(
                                 onTap: () {
                                   showDeleted(context);

                                 },
                                 child: Container(
                                   height: 34,
                                   width: 147,
                                   decoration: BoxDecoration(
                                       color: Color(0xFF7F23A8),
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   child:  const Center(
                                     child:  Text("Yes, I am sure", style: TextStyle(
                                         color: Colors.white
                                     ),),
                                   ),

                                 ),
                               ),
                               const Gap(10),
                               InkWell(
                                 onTap: () {
                                   Get.back();
                                 },
                                 child: Container(
                                   height: 34,
                                   width: 147,
                                   decoration: BoxDecoration(
                                       color: Colors.black,
                                     border: Border.all(
                                       color: const Color(0xFF7F23A8),
                                     ),
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   child:  const Center(
                                     child:  Text("Back", style: TextStyle(
                                         color: Colors.white
                                     ),),
                                   ),

                                 ),
                               ),
                               const Gap(37),

                             ],
                           )
                         );
                       },
                       child: Row(
                         children: const [
                           Icon(Icons.delete,color: Color(0xFFFF1414),
                             size: 20,
                           ),
                           Text("Remove Card", style: TextStyle(
                               fontWeight: FontWeight.w600,
                               fontSize: 16,
                               color: Color(0xFFFF1414)
                           ),)
                         ],
                       ),
                     ),
                   ],
                 ),
                 Column(
                   children: [
                     const Gap(30),
                     Container(
                       height: 50,
                       width: double.infinity,
                       child: ContainerBtn(
                         Textdata: "Proceed",
                         radius: 10,
                         color: Colors.white,
                         Boxcolor: Color(0xFF7F23A8),
                         onTap: () {
                           Get.bottomSheet(SingleChildScrollView(
                             child: Container(
                               height: 467,
                               decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Column(
                                       children: [
                                         Stack(
                                             children: [
                                               Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                                                   fit: BoxFit.cover),
                                               Column(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   const Gap(60),
                                                   Container(
                                                     height: 100,
                                                     width: 100,
                                                     decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(50),
                                                         color: Colors.white),
                                                     child: Stack(children: [
                                                       Align(
                                                         alignment: Alignment.center,
                                                         child: Lottie.asset(
                                                             "assets/lottie/119996-coffetti-ev.json",
                                                             fit: BoxFit.cover),
                                                       ),
                                                       Align(
                                                           alignment: Alignment.center,
                                                           child: Image.asset("assets/png/tick.png"))
                                                     ]),
                                                   ),
                                                   const Gap(20),
                                                   Text(
                                                     "Congratulations!",
                                                     style: Styles.headLineStylel.copyWith(
                                                       color: Colors.white,
                                                     ),
                                                   ),
                                                   Text(
                                                     "An Escrow invitation has beeen sent to \n"
                                                         "abc@gmail.com. You will be notified as soon as the\n"
                                                         "payment has been made.",
                                                     style: Styles.textStyle.copyWith(
                                                         color: Colors.white,
                                                         fontWeight: FontWeight.normal,
                                                         fontSize: 14),
                                                     textAlign: TextAlign.center,
                                                   ),
                                                   const Gap(16),
                                                   ContainerBtn(radius: 10, Textdata: "Proceed",
                                                     color: const Color(0xFFFFFFff),
                                                     Boxcolor: const Color(0xFF10F2EA),
                                                     onTap: () {
                                                       //TODO: leave page
                                                       Get.bottomSheet(SingleChildScrollView(
                                                         child: Container(
                                                           height: 467,
                                                           decoration: BoxDecoration(color: Color(0xFF7F23A8), borderRadius: BorderRadius.circular(30)),
                                                           child: Padding(
                                                             padding: const EdgeInsets.only(left: 50.0, right: 23, top: 32),
                                                             child: Column(
                                                               crossAxisAlignment: CrossAxisAlignment.center,
                                                               children: [
                                                                 Column(
                                                                   children: [
                                                                     Stack(
                                                                         children: [
                                                                           Lottie.asset("assets/lottie/119996-coffetti-ev.json",
                                                                               fit: BoxFit.cover),
                                                                           Column(
                                                                             mainAxisAlignment: MainAxisAlignment.center,
                                                                             crossAxisAlignment: CrossAxisAlignment.center,
                                                                             children: [
                                                                               const Gap(60),
                                                                               Container(
                                                                                 height: 100,
                                                                                 width: 100,
                                                                                 decoration: BoxDecoration(
                                                                                     borderRadius: BorderRadius.circular(50),
                                                                                     color: Colors.white),
                                                                                 child: Stack(children: [
                                                                                   Align(
                                                                                     alignment: Alignment.center,
                                                                                     child: Lottie.asset(
                                                                                         "assets/lottie/119996-coffetti-ev.json",
                                                                                         fit: BoxFit.cover),
                                                                                   ),
                                                                                   Align(
                                                                                       alignment: Alignment.center,
                                                                                       child: Image.asset("assets/png/tick.png"))
                                                                                 ]),
                                                                               ),
                                                                               const Gap(20),
                                                                               Text(
                                                                                 "Congratulations!",
                                                                                 style: Styles.headLineStylel.copyWith(
                                                                                   color: Colors.white,
                                                                                 ),
                                                                               ),
                                                                               Text(
                                                                                 "An Escrow invitation has beeen sent to \n"
                                                                                     "abc@gmail.com. You will be notified as soon as the\n"
                                                                                     "payment has been made.",
                                                                                 style: Styles.textStyle.copyWith(
                                                                                     color: Colors.white,
                                                                                     fontWeight: FontWeight.normal,
                                                                                     fontSize: 14),
                                                                                 textAlign: TextAlign.center,
                                                                               ),
                                                                               const Gap(16),
                                                                               ContainerBtn(radius: 10, Textdata: "Proceed",
                                                                                 color: const Color(0xFFFFFFff),
                                                                                 Boxcolor: const Color(0xFF10F2EA),
                                                                                 onTap: () {
                                                                                   //TODO: leave page
                                                                                 },
                                                                               ),

                                                                             ],
                                                                           ),
                                                                         ]),
                                                                   ],
                                                                 ),
                                                               ],
                                                             ),
                                                           ),
                                                         ),
                                                       ));

                                                     },
                                                   ),

                                                 ],
                                               ),
                                             ]),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ));

                         },
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                   ],
                 ),

               ],
             ),



             Expanded(
               flex: 1,
               child: Container(),
             ),
             const Gap(223),


           ],
         ),
       ),
     ),

    );
  }
}




//TODO: First Dia

void showDia(BuildContext context) {
  showDialog(context: context, builder: (context) {
    return Dialog(
      backgroundColor: Colors.black,
      child: Container(
        height: 241,
        width: 279,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black
        ),
        child: Column(
          children: [
            Gap(52),
            Container(
              child: const Text("Are you sure you\n"
                  "want to delete this card?", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),),
            ),
            Gap(37),
            InkWell(
              onTap: () {
                showDeleted(context);
              },
              child: Container(
                height: 37,
                width: 147,
                decoration: const BoxDecoration(
                  color: Color(0xFF7F23A8),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: const Center(child: Text("Yes, I am sure", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white
                ),)),
              ),
            ),
            Gap(10),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 37,
                width: 147,
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color(0xFF7F23A8),
                    )
                  ),
                ),
                child: const Center(child: Text("Back", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white
                ),)),
              ),
            ),
          ],
        ),
      ),

    );
  },);
}

void showDeleted(BuildContext context) {
  showDialog(context: context, builder: (context) {
    return Dialog(
      backgroundColor: Color(0xFF0AD837),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 71,
        width: 332, 
        child: Card(

          color: Color(0xFF0AD837),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Card Deleted", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),),
              Gap(10),
              Image.asset("assets/images/img_13.png", width: 48, height: 48,)
            ],
          ),
        ),
      ),

    );
  },);

}



class ListOfCard extends StatelessWidget {
   ListOfCard({Key? key}) : super(key: key);
  List<CardClass>currenyList =[
    CardClass(cardImage: "cardImage", cardNumber: "xxxx xxxx xxxx 4321"),
    CardClass(cardImage: "cardImage", cardNumber: "xxxx xxxx xxxx 0023"),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          child: ListView.builder(itemCount: currenyList.length,itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFF7F23A8),
                  )
              ),
              child: Card(
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.album_outlined)),
                        Image.asset("assets/images/img_13.png.png", height: 40,width: 40,),
                        Text(currenyList[index].cardNumber,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                      ],
                    ),
                  ],
                ),

              ),
            );
          },),
        )
    );
  }
}
