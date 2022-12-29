import 'package:flutter/material.dart';

class ContainerBtn extends StatelessWidget {
  ContainerBtn({
    Key? key, this.Boxcolor, required this.radius, required this.Textdata,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.onTap
  });
  Color? Boxcolor;
  double radius;
  String Textdata;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Boxcolor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text("$Textdata", style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color
          ),),
        ),

      ),
    );
  }
}
