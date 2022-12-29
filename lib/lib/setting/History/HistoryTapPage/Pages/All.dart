import 'package:flutter/material.dart';

import '../../Class/classOfHistroyOfTrans.dart';

class All extends StatelessWidget {
   All({Key? key}) : super(key: key);


   List<ClassOfHistroyOfTrans>_listHistory=[
     ClassOfHistroyOfTrans(buy: "Buy", nft: "NFT", nfTprice: "bb",
         classOfHistroyOfTransCyberMob: "27/12/2020", amount: "Amount",
         amountprice: "1000.00", total: "Total", totalPrice: "1002.00",
         cyberMobCyberMob: "cyberMobCyberMob", cyberMob: "Cyber Mob",
         date: '27/12/2020', value: 'Value', valuePrice: '3.12 Eth', Transactionfee: 'Transaction fee', Transactionprice: '2'),
     ClassOfHistroyOfTrans(buy: "Buy", nft: "NFT", nfTprice: "bb",
         classOfHistroyOfTransCyberMob: "27/12/2020", amount: "Amount",
         amountprice: "1000.00", total: "Total", totalPrice: "1002.00",
         cyberMobCyberMob: "cyberMobCyberMob", cyberMob: "Cyber Mob",
         date: '27/12/2020', value: 'Value', valuePrice: '3.12 Eth', Transactionfee: 'Transaction fee', Transactionprice: '2'),
     ClassOfHistroyOfTrans(buy: "Buy", nft: "NFT", nfTprice: "bb",
         classOfHistroyOfTransCyberMob: "27/12/2020", amount: "Amount",
         amountprice: "1000.00", total: "Total", totalPrice: "1002.00",
         cyberMobCyberMob: "cyberMobCyberMob", cyberMob: "Cyber Mob",
         date: '27/12/2020', value: 'Value', valuePrice: '3.12 Eth', Transactionfee: 'Transaction fee', Transactionprice: '2'),
     ClassOfHistroyOfTrans(buy: "Buy", nft: "NFT", nfTprice: "bb",
         classOfHistroyOfTransCyberMob: "27/12/2020", amount: "Amount",
         amountprice: "1000.00", total: "Total", totalPrice: "1002.00",
         cyberMobCyberMob: "cyberMobCyberMob", cyberMob: "Cyber Mob",
         date: '27/12/2020', value: 'Value', valuePrice: '3.12 Eth', Transactionfee: 'Transaction fee', Transactionprice: '2'),
     ClassOfHistroyOfTrans(buy: "Buy", nft: "NFT", nfTprice: "bb",
         classOfHistroyOfTransCyberMob: "27/12/2020", amount: "Amount",
         amountprice: "1000.00", total: "Total", totalPrice: "1002.00",
         cyberMobCyberMob: "cyberMobCyberMob", cyberMob: "Cyber Mob",
         date: '27/12/2020', value: 'Value', valuePrice: '3.12 Eth', Transactionfee: 'Transaction fee', Transactionprice: '2'),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5ECFF),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: double.infinity,
          child: ListView.builder(itemCount: _listHistory.length,itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  const SizedBox(height: 21,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_listHistory[index].buy, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                        Text(_listHistory[index].date, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                      ],
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0, right: 80),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(_listHistory[index].nft, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                           Text(_listHistory[index].cyberMob, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(_listHistory[index].amount, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                           Text("\$${_listHistory[index].amountprice}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(_listHistory[index].value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                           Text("${_listHistory[index].valuePrice}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(_listHistory[index].Transactionfee, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                           Text("\$${_listHistory[index].Transactionprice}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                         ],
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text(_listHistory[index].total, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),),
                           Text("\$${_listHistory[index].totalPrice}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF7F23A8)),),
                         ],
                       ),
                       const SizedBox(height: 21,),

                     ],
                   ),
                 )
                ],
              ),
            );
          },),
        ),
      ),
    );
  }
}
