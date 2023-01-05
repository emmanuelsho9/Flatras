import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Wallet/Send/Send Crypto.dart';
import '../myCommentWidgets/ContainerBtnContainer.dart';
import '../myCommentWidgets/EditTextMyOwn.dart';

class anoterTrade extends StatelessWidget {
   anoterTrade({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: sendCrypto()),
        ],
      ),
    );
  }
}
