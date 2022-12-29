import 'package:flatra/features/buy_crypto/controllers/payment_method_controller.dart';
import 'package:flatra/features/buy_crypto/screens/payment_method.dart';
import 'package:flatra/features/home/controllers/coin_data_controller.dart';
import 'package:flatra/features/home/controllers/fav_counter_controller.dart';
import 'package:get/get.dart';

class AllControllers extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<CoinDataController>(() => CoinDataController());
    Get.lazyPut<FavCounterController>(() => FavCounterController());
    Get.lazyPut<PaymentMethodController>(() => PaymentMethodController());
  }
}
