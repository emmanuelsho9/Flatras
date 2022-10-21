import 'package:get/get.dart';

class PaymentMethodController extends GetxController {
  RxBool selected = false.obs;

  void toggleView(int isSelected) {
    if (isSelected == 0) {
      selected.value = true;
    } else {
      selected.value = false;
    }
  }
}
