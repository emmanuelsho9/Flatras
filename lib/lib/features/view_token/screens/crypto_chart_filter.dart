import 'package:flatra/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoChartFilter extends StatelessWidget {
  const CryptoChartFilter({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1H",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1D",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1W",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1M",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1Y",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "ALL",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
