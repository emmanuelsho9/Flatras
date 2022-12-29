import 'package:flatra/models/seed_phrase.dart';
import 'package:http/http.dart' as http;

class CreateWalletService {
  Future<SeedPhrase?> createWallet() async {
    var client = http.Client();

    var uri = Uri.parse('https://api-eu1.tatum.io/v3/bitcoin/wallet');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return seedPhraseFromJson(json);
    }
    return null;
  }
}
