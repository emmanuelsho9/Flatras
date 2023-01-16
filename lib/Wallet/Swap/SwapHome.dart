import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Escrow/seller/termsofTradeSeller.dart';
import '../../common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import '../../setting/Appearance/Appearance.dart';
import '../../utils/styles.dart';

class SwapHome extends StatefulWidget {
  const SwapHome({Key? key}) : super(key: key);

  @override
  State<SwapHome> createState() => _SwapHomeState();
}

class _SwapHomeState extends State<SwapHome> {

  var string1FromActivity;
  var stringTFromActivity;
  var Isimg;
  var IsTimg1;

  Future _startActivity() async {

    var results = await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => RetuernContentbuyerListOfShowBottonSheet());

    if (results != null) {
      setState(() {
        string1FromActivity = results[0];
        IsTimg1 = results[1];
        print(string1FromActivity);
      }
      );
    }else if(string1FromActivity == null&&Isimg==null){
      return Text("");
    }
  }
  Future _TstartActivity() async {

    var results = await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => RetuernContentbuyerListOfShowBottonSheet());

    if (results != null) {
      setState(() {
        stringTFromActivity = results[0];
        Isimg = results[1];
        print(stringTFromActivity);
      }
      );
    }else if(stringTFromActivity == null&&Isimg==null){
      return Text("data");
    }
  }

  bool swap = false;


  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Text("Swap", style: TextStyle(
          color: Colors.black
      ),),
      leading: IconButton(onPressed: (){
        Get.back();
      }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body:  SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 19.0,right: 19),
            child: Column(
              children: [
                const  Gap(30),

                Text(
                  "Select the coin you would like to exchange\n"
                      "it will show you the value in your desires currency.",
                  style: Styles.headLineStyle2
                      .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const  Gap(28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            swap==true?swap=false:swap=true;

                          });
                        },
                        child: Image.asset("assets/images/img_29.png",scale: 2,)),
                  ],
                ),

                swap==true?swapFrom():swapTo(),
                const   Gap(41),
                swap==true?swapTo():swapFrom(),
                const  Gap(100),
                ContainerBtn(radius: 10, Textdata: "Proceed", Boxcolor: const  Color(0xFF7F23A8), color: Colors.white,)


















              ],
            ),
          ),
        ),
      ),
    );
  }

  Column swapTo() {
    return Column(
                  children: [
                    Row(
                      children: const [
                        Flexible(
                          child: Text("Swap to", style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),),
                        ),
                      ],
                    ),
                    const   Gap(4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Flexible(
                          child: InkWell(
                            onTap: () async {
                              _TstartActivity();

                            },
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Container(
                                height: 50,
                                padding: const EdgeInsets.only(right: 7, left: 7),
                                decoration: BoxDecoration(
                                  color: const  Color(0xFF7F23A8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Row(
                                  children:  [
                                    const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                    const  Gap(3),
                                    FittedBox(
                                      child: Text(stringTFromActivity==null?"Select":stringTFromActivity.toString(), style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 14
                                      ),),
                                    ),
                                    const  Gap(5),
                                    Isimg==null?Image.asset("assets/images/img_20.png",width: 28, height: 28):Image.network(Isimg, width: 28, height: 28,),
                                  ],
                                )),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: EditTextMyOwn(
                            obscureText: false,
                            Boardcolor: Color(0xFFF5F5F5),
                            keyboardType: TextInputType.phone,
                            height: 50,
                            hintText: "0.00",
                            IcononPressed: () {
                              print("tapped");
                            },
                            Boxcolor: const Color(0xFFF5F5F5),
                            Hintcolor: const Color(0xFF9B9B9B),

                          ),
                        ),

                      ],
                    ),
                  ],
                );
  }

  Column swapFrom() {
    return Column(
                 children: [
                   Row(
                     children: const [
                       Flexible(
                         child: Text("Swap from", style: TextStyle(
                             fontWeight: FontWeight.w400,
                             fontSize: 16
                         ),),
                       ),
                     ],
                   ),
                   const   Gap(4),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:  [
                       Flexible(
                         child: InkWell(
                           onTap: () async {
                             _startActivity();

                           },
                           child: FittedBox(
                             fit: BoxFit.fitWidth,
                             child: Container(
                               height: 50,
                               padding: const EdgeInsets.only(right: 7, left: 7),
                               decoration: BoxDecoration(
                                 color: const  Color(0xFF7F23A8),
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Center(child: Row(
                                 children:  [
                                   const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                   const  Gap(3),
                                   FittedBox(
                                     child: Text(string1FromActivity==null?"Select":string1FromActivity.toString(), style: const TextStyle(
                                         fontWeight: FontWeight.w700,
                                         color: Colors.white,
                                         fontSize: 14
                                     ),),
                                   ),
                                   const  Gap(5),
                                   IsTimg1==null?Image.asset("assets/images/img_20.png",width: 28, height: 28):Image.network(IsTimg1, width: 28, height: 28,),
                                 ],
                               )),
                             ),
                           ),
                         ),
                       ),
                       Flexible(
                         flex: 2,
                         child: EditTextMyOwn(
                           obscureText: false,
                           Boardcolor: Color(0xFFF5F5F5),
                           keyboardType: TextInputType.phone,
                           height: 50,
                           hintText: "0.00",
                           IcononPressed: () {
                             print("tapped");
                           },
                           Boxcolor: const Color(0xFFF5F5F5),
                           Hintcolor: const Color(0xFF9B9B9B),

                         ),
                       ),

                     ],
                   ),
                 ],
               );
  }
}
