import 'package:dropdown_search/dropdown_search.dart';
import 'package:flatra/Wallet/Send/summarySend.dart';
import 'package:flatra/common_widgets/myCommentWidgets/ContainerBtnContainer.dart';
import 'package:flatra/common_widgets/myCommentWidgets/EditTextMyOwn.dart';
import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Escrow/seller/termsofTradeSeller.dart';
import '../../utils/colors.dart';
import '../../utils/styles.dart';
import '../Buy/buyerListOfShowBottonSheet.dart';
import 'Beneficiary List.dart';
import 'BeneficiaryListClass.dart';
import 'bottomSheetForSend/showCoinForSend.dart';

class sendCrypto extends StatefulWidget {
  const sendCrypto({Key? key}) : super(key: key);

  @override
  State<sendCrypto> createState() => _sendCryptoState();
}

class _sendCryptoState extends State<sendCrypto> {


  var b = [
    "Emmanuel","Doyin"
  ];

  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D'];

  List<BeneficiaryListClass>invo=[
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
    BeneficiaryListClass(img: "assets/images/img_21.png", name: "Ben"),
  ];

  var stringFromActivity;
  var Isimg;

  Future _startActivity() async {

    var results = await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => RetuernContentbuyerListOfShowBottonSheet());

    if (results != null) {
      setState(() {
        stringFromActivity = results[0];
        Isimg = results[1];
        print(stringFromActivity);
      }
      );
    }else if(stringFromActivity == null&&Isimg==null){
      return Text("data");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text("Send Crypto", style: TextStyle(
              fontWeight:FontWeight.w600,
              fontSize: 16,
              color: Colors.black
          ),),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
        ),
        body: screenResponisive(scaffold: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const Gap(50),
                const Text("Ethereum Wallet", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("7.34 ETH", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24,),),
                    Image.asset("assets/png/img_15.png", scale: 2,),

                  ],
                ),
                  const Text("Recipient Wallet Address", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,),),
                  const Gap(7),
                  const Gap(7),
                  EditTextMyOwn(Boardcolor: Color(0xFF7F23A8), obscureText: false, hintText: "0xF2AA65753e97464380CE9578C2559b4dEb630df9",),
                  const Gap(15),
                  const Text("Amount", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,),),
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
                              padding: EdgeInsets.only(right: 7, left: 7),
                              decoration: BoxDecoration(
                                color: const  Color(0xFF7F23A8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Row(
                                children:  [
                                  const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
                                  const  Gap(3),
                                  FittedBox(
                                    child: Text(stringFromActivity==null?"Select":stringFromActivity.toString(), style: const TextStyle(
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
                  const Gap(25),
                  const Text("User Info", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)
                  ),),
                  const Gap(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.bottomSheet(BottomSheet(onClosing: () => null, backgroundColor: Colors.white,  builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: SingleChildScrollView(
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.5,
                                  width: MediaQuery.of(context).size.height*0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text("Add Beneficiary", style: TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.w600,
                                          ),),
                                        ],
                                      ),
                                      const Gap(50),
                                      const Text("Recipient Wallet Address", style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w400,
                                      ),),
                                      const Gap(7),
                                      EditTextMyOwn(Boardcolor: Color(0xFF7F23A8), obscureText: false, hintText: "0xF2AA65753e97464380CE9578C2559b4dEb630df9",),
                                      const Gap(162),
                                      ContainerBtn(radius: 10, Textdata: "Proceed",
                                        onTap: () {
                                          //Get.to(SummarySend());
                                        },
                                        Boxcolor:  Color(0xFF7F23A8), color: Colors.white,),


                                    ],
                                  ),
                                ),
                              ),
                            );
                          },));
                        },
                        child: Text("Add to Beneficiary", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)
                        ),),
                      ),
                    ],
                  ),
                  const Gap(200),
                  ContainerBtn(radius: 10, Textdata: "Proceed",
                    onTap: () {
                      Get.to(SummarySend());
                    },
                    Boxcolor:  Color(0xFF7F23A8), color: Colors.white,)


                ],
              ),
            ),
            ),
          ),
        ),)

    );
  }

}




class SendCryptdrop1 extends StatelessWidget {
  SendCryptdrop1({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.onTap,
   required this.width,
    this.icon,
    this.Iconcolor

  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Color? Iconcolor;
  Function()? onTap;
  double? width;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: Boxcolor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 2.0, right: 2),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: Iconcolor,),
                Text("$Textdata", style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color
                ),),
                Image.asset("assets/images/img_20.png", scale: 1.5,)
              ],
            ),
          ),
        ),

      ),
    );
  }
}




