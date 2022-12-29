import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class AllRow extends StatefulWidget {

  const AllRow({Key? key}) : super(key: key);

  @override
  State<AllRow> createState() => _AllRowState();
}

class _AllRowState extends State<AllRow> {
 var currentIdex=0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return Column();
          },),
        ],
      ),
    );
  }
}
