import 'package:flutter/material.dart';


class EditTextMyOwn extends StatelessWidget {
  EditTextMyOwn({
    Key? key,this.height,this.Boxcolor,
    required this.Boardcolor,
    this.hintText,
    this.Hintcolor,
    this.IcononPressed,
    this.Suffixicon,
    this.keyboardType,
    required this.obscureText,
    this.TextFieldenabled,
    this.controller,
  });
  double? height;
  Color? Boxcolor;
  Color Boardcolor = const Color(0xFF000000);
  String? hintText;
  Color? Hintcolor;
   Function()? IcononPressed;
  IconData? Suffixicon;
  TextInputType? keyboardType;
  bool obscureText = false;
  bool? TextFieldenabled;
  TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Boxcolor,
          border: Border.all(
            color: Boardcolor,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: TextFormField(
          enabled: TextFieldenabled,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Hintcolor,

              ),
            suffixIcon: IconButton(onPressed: IcononPressed, icon: Icon(Suffixicon, color: Colors.black,)),
          ),

        ),
      ),
    );
  }
}
