import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';

class TradeNowButton extends StatelessWidget {
  const TradeNowButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: AppLayout.getScreenWidth() * 0.35,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(3, 10),
                spreadRadius: -8,
                blurRadius: 24,
                color: Color.fromRGBO(0, 0, 0, 1),
              )
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle
                .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
