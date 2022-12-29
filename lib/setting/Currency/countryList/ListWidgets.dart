import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'class.dart';

class CountryListW extends StatelessWidget {
   CountryListW({Key? key}) : super(key: key);

   List<countryL>c=[
     countryL(currenyFull: "British Pound", currenyShort: "GBP"),
     countryL(currenyFull: "United States of America Dollar", currenyShort: "USD"),
     countryL(currenyFull: "Nigerian Naira", currenyShort: "NGN"),
     countryL(currenyFull: "United Arab Emirates Dirham", currenyShort: "AED"),
     countryL(currenyFull: "Armenian Dram", currenyShort: "AMD"),
     countryL(currenyFull: "Netherlands Antillean Gulden", currenyShort: "ANG"),
     countryL(currenyFull: "Argentine Peso", currenyShort: "ARS"),
     countryL(currenyFull: "Argentine Peso", currenyShort: "ARS"),
     countryL(currenyFull: "Argentine Peso", currenyShort: "ARS"),
     countryL(currenyFull: "Argentine Peso", currenyShort: "ARS"),
     countryL(currenyFull: "Argentine Peso", currenyShort: "ARS"),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF7F23A8),
      body: ListView.builder(itemCount: c.length, itemBuilder: (context, index) {
        return Container(
          color: Color(0xFF7F23A8),

          child: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(c[index].currenyFull, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),),
                Text(c[index].currenyShort, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFFC57BE5)),),
              ],
            ),
          ),
        );

      },),
    );
  }
}
