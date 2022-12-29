import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Class/classOfHistroyOfTrans.dart';

class RowOfDetails extends StatelessWidget {
   RowOfDetails ({Key? key}) : super(key: key);


  List<ClassOfHistroyOfTrans>currenyList =[
    ClassOfHistroyOfTrans(buy: "buy",
        nft: "nft",
        nfTprice: 'nfTprice',
        classOfHistroyOfTransCyberMob: "classOfHistroyOfTransCyberMob",
        amount: "amount", amountprice: 'amountprice',
        total: "total",
        totalPrice: "totalPrice",
        cyberMobCyberMob: "cyberMobCyberMob",
        cyberMob: "cyberMob", date: '', value: '', valuePrice: '', Transactionfee: '', Transactionprice: '')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemCount: currenyList.length,itemBuilder:
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 10),
            child: Container(
              height: 70,
              width: 320,
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
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.album_outlined)),
                        Gap(22.02),
                        Image.asset("assets/images/img_13.png.png", height: 40,width: 40,),
                        Gap(22.02),
                        Text(currenyList[index].amount,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                      ],
                    ),
                  ],
                ),

              ),
            ),
          );
        },)
    );
  }
}
