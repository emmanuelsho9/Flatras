import 'package:flatra/features/home/models/coin_data.dart';
import 'package:flatra/features/home/services/coin_data_service.dart';
import 'package:get/get.dart';

class CoinDataController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxBool _isLoadingFilter = true.obs;

  var coinDataList = <CoinData>[].obs;
  var coinDataFilterList = <CoinData>[].obs;

  // Instantial Variables
  RxBool checkLoading() => _isLoading;
  RxBool checkLoadingFilter() => _isLoading;

  @override
  void onInit() {
    if (_isLoading.isTrue) {
      getCoinData();
    }
    if (_isLoadingFilter.isTrue) {
      getFilterCoinData();
    }
    super.onInit();
  }

  void getCoinData() async {
    var coinData = await CoinDataService.getCoinData();
    if (coinData != null) {
      coinDataList.value = coinData;
      update();
    }
    _isLoading.value = false;
  }

  void getFilterCoinData() async {
    var coinData = await CoinDataService.getCoinData();
    if (coinData != null) {
      coinDataFilterList.value = coinData;
      update();
    }
    _isLoadingFilter.value = false;
  }

  void getFilteredCoinData(String name) async {
    var coinData = await CoinDataService.getCoinData();
    if (coinData != null) {
      if (name.isEmpty) {
        coinDataFilterList.value = coinData;
      } else {
        coinDataFilterList.value = coinData
            .where((element) => element.name
                .toString()
                .toLowerCase()
                .contains(name.toLowerCase()))
            .toList();
      }
      update();
    }
    _isLoadingFilter.value = false;
  }
}
