import 'package:flatra/features/home/models/coin_data.dart';
import 'package:http/http.dart' as http;

class CoinDataService {
  static Future<List<CoinData>?> getCoinData() async {
    var client = http.Client();
    var uri = Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=ngn&order=market_cap_desc&per_page=100&page=1&sparkline=true');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return coinDataFromJson(json);
    }
    return null;
  }
}
