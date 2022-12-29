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
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Payment Option", style: TextStyle(
                fontWeight:FontWeight.w600,
                fontSize: 16,
                color: Colors.black
            ),),
          ],
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: const
            Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 19.0,right: 19, top: 50),
          child: Column(
            children: [
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
                    width: 100,
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
                    width: 100,
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
                    width: 100,
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
      ),


    );
  }
}
