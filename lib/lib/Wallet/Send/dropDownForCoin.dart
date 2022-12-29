import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../features/home/models/coin_data.dart';

class DropDownCoin extends StatefulWidget {
   DropDownCoin({Key? key,}) : super(key: key);


  @override
  State<DropDownCoin> createState() => _DropDownCoinState();
}

class _DropDownCoinState extends State<DropDownCoin> {

   String? _dropNow;

  List<String>_dropList=[
    "Emma","Tola"
  ];

  List<dynamic>CoindropList=[];


    void DropDowngetCoinData() async {
     var client = http.Client();
     var uri = Uri.parse(
         'https://api.coingecko.com/api/v3/coins/markets?vs_currency=ngn&order=market_cap_desc&per_page=100&page=1&sparkline=true');
     var response = await client.get(uri);
     var listData = jsonDecode(response.body);
     setState(() {
       CoindropList = listData;
     });

   }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DropDowngetCoinData();
  }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(_dropNow.toString()),
            DropdownButton(
              hint: const Text("Select"),
              value: _dropNow,
              items:CoindropList.map((e) {
                return DropdownMenuItem(value: e,child: Text(e["name"]),);
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _dropNow=val as String?;
                });
            },
            )
          ],
        ),
      ),
    );
  }
}
