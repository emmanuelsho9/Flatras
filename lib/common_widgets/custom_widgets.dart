import 'package:flatra/features/buy_crypto/controllers/payment_method_controller.dart';
import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flatra/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomWidgets {
  static Widget textField(String title,
      {bool isPassword = false,
      bool isNumber = false,
      bool obscureText = true,
      int? length,
      String? hint,
      Function()? passwordVisibilityPress,
      IconData? suffixIcon,
      TextEditingController? textController,
      int lines = 1}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45.h,
            decoration: BoxDecoration(
              color: kEditextColor,
              border: Border.all(
                color: kEditextColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              maxLines: lines,
              controller: textController,
              maxLength: length,
              inputFormatters: [
                LengthLimitingTextInputFormatter(length),
              ],
              obscureText: isPassword,
              keyboardType:
                  isNumber ? TextInputType.number : TextInputType.text,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(suffixIcon),
                        onPressed: passwordVisibilityPress,
                      )
                    : Icon(
                        suffixIcon,
                        color: Colors.black,
                        size: 24,
                      ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                isDense: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PasswordAttributesWidget extends StatelessWidget {
  const PasswordAttributesWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: AppLayout.getHeight(15),
          width: AppLayout.getwidth(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r), color: kPrimaryColor),
        ),
        const Gap(5),
        Text(
          text,
          style: Styles.textStyle
              .copyWith(fontSize: 14, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}

class LoginAttributesWidget extends StatelessWidget {
  const LoginAttributesWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: AppLayout.getHeight(15),
          width: AppLayout.getwidth(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r), color: kPrimaryColor),
        ),
        const Gap(5),
        Text(text,
            style: Styles.textStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.black))
      ],
    );
  }
}

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget(
      {Key? key,
      required this.size,
      required this.text,
      required this.press,
      required this.isBorder})
      : super(key: key);

  final Size size;
  final String text;
  final bool isBorder;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(left: 37, right: 37),
        width: size.width,
        height: 50,
        decoration: BoxDecoration(
          border: isBorder ? Border.all(width: 1, color: kButtonBorder) : null,
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.buttonTextStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class PaymentMethodWidget extends StatelessWidget {
  PaymentMethodWidget({Key? key, required this.cardDetails}) : super(key: key);

  Map<String, dynamic> cardDetails;

  PaymentMethodController c = Get.put(PaymentMethodController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 10),
        height: 60,
        decoration: BoxDecoration(
            color: c.selected.value ? kRadioSelectActive : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kPrimaryColor, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: c.selected.value ? kPrimaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                )
              ],
            ),
            Image(image: AssetImage(cardDetails['image'])),
            Text(
              cardDetails['cardNo'],
              style: Styles.textStyle.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCodeNumberBox(String codeNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            codeNumber,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    ),
  );
}
