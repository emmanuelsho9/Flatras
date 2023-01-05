import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BankPayment extends StatelessWidget {
  const BankPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Payment Option", style: TextStyle(
            fontWeight:FontWeight.w600,
            fontSize: 16,
            color: Colors.black
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            Gap(30),
            const Text("Bank Payment", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            const Gap(29),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Account Name:", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),),
                Container(
                  child:const Text("Flatra Escrow ",textAlign: TextAlign.center, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),),
                ),
              ],
            ),
            const Gap(17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Account Number:", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),),
                Container(
                  child:const Text("00112233445 ",textAlign: TextAlign.center, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                  ),),
                ),
              ],
            ),
            const Gap(17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Amount:", style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16
                ),),
                Container(
                  child:const Text("2,400,000 ",textAlign: TextAlign.center, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16
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
