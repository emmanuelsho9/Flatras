import 'package:flatra/common_widgets/myCommentWidgets/Responive/screenResponsive/screenRes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/seed_phrase.dart';
import '../Appearance/Appearance.dart';
import '../Seed Phrase/SeedPhrase.dart';
import 'Change Password/Old Password.dart';
import 'Two Step Verification/Phone Number.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Security", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: screenResponisive(scaffold: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EscrowSecurePayment(headiing: "Two Step Verification",
              IcononPressed:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber(),));
              },
              subHeading: " Recommended for strong security",),
            EscrowSecurePayment(headiing: "Change Password",
              IcononPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OldPassword(),));
              },
              subHeading: "Reset your password",),
            EscrowSecurePayment(headiing: "Seed phrase",
              IcononPressed: () {
                //TODO:Seed phrase
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => SeedPhraseNew()));


              },
              subHeading: "View your security phrase here",),
            AppearanceSelector(
              GapIcon: 128,
              Bordercolor: Colors.white,
              heading: "Enable finger print",
              subHeading: "Enable fingerprint for easy login",
              elevation: 0,
            ),


          ],
        ),
      ),)
    );
  }
}


class EscrowSecurePayment extends StatelessWidget {
  EscrowSecurePayment({
    Key? key,this.headiing, this.subHeading, this.onTap,
    this.icon, this.IcononPressed,

  }) ;

  String? headiing;
  String? subHeading;
  Function()? onTap;
  IconData? icon;
  Function()? IcononPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23.0, bottom: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Text("$headiing", style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$subHeading",
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 14,

                    fontWeight: FontWeight.w400
                ),),
              Image.asset("assets/png/img_2.png", width: 7,height: 13,),


            ],
          ),
        ],
      ),
    );
  }
}





class AppearanceSelector extends StatefulWidget {
  AppearanceSelector({
    Key? key, required this.Bordercolor, this.elevation, this.IcononPressed,
    required this.heading, required this.subHeading, required this.GapIcon,
  }) ;
  Color Bordercolor = const Color(0xFF000000);
  double? elevation;
  Function()? IcononPressed;
  String heading;
  String subHeading;
  double GapIcon;

  @override
  State<AppearanceSelector> createState() => _AppearanceSelectorState();
}

class _AppearanceSelectorState extends State<AppearanceSelector> {
  bool switchOn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23.0, bottom: 23),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: widget.Bordercolor)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${widget.heading}", style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${widget.subHeading}", style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
              Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  switchOn==true?const Color(0xFF993FC0):const Color(0xFFD9D8DA )
                ),
                child: Switch(inactiveTrackColor: const Color(0xFFD9D8DA ),
                  inactiveThumbColor: Colors.black ,
                  activeColor: const Color(0xFF6A1C8D),
                  activeTrackColor: const Color(0xFF993FC0),value:
                  switchOn, onChanged: (value) {
                    setState(() {
                      switchOn==true?switchOn=false:switchOn=true;
                      switchOn=value;
                    });

                  },),
              )

            ],
          ),
        ],
  ),
   );}}