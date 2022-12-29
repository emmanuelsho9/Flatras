import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Create Goal.dart';
import 'completedUILIst.dart';

class Completed extends StatelessWidget {
  Completed({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(CreateGoal());

      },backgroundColor: const Color(0xFF7F23A8), child:  const Icon(Icons.add)),
      backgroundColor: Color(0xFFF5ECFF),
      body: Column(
        children: [
          Expanded(child: CompletedListUI()),
        ],
      ),
    );
  }
}
