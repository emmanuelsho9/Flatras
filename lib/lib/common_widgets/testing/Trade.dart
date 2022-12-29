import 'package:flutter/material.dart';

import '../myCommentWidgets/ContainerBtnContainer.dart';
import 'anotherTrade.dart';

class Trade extends StatelessWidget {
   Trade({Key? key,
     required this.pice,
  required this.time,

   }) : super(key: key);

  String pice;
  String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(pice),
            Text(time.length.toString()),
            ContainerBtn(radius: 10, Textdata: "Textdata", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => anoterTrade(),));
            },)
          ],
        ),
      ),
    );
  }
}
