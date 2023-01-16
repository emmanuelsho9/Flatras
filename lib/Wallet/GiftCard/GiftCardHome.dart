import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GiftCardHome extends StatelessWidget {
  const GiftCardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset("assets/images/img_26.png"),
         const Gap(20),
          Image.asset("assets/images/img_27.png"),
          const Gap(20),

          Image.asset("assets/images/img_28.png"),
        ],
      ),
    );
  }
}
