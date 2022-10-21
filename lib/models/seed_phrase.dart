import 'dart:convert';

SeedPhrase seedPhraseFromJson(String str) =>
    SeedPhrase.fromJson(json.decode(str));

String seedPhraseToJson(SeedPhrase data) => json.encode(data.toJson());

class SeedPhrase {
  SeedPhrase({
    required this.mnemonic,
    required this.xpub,
  });

  String mnemonic;
  String xpub;

  factory SeedPhrase.fromJson(Map<String, dynamic> json) => SeedPhrase(
        mnemonic: json["mnemonic"],
        xpub: json["xpub"],
      );

  Map<String, dynamic> toJson() => {
        "mnemonic": mnemonic,
        "xpub": xpub,
      };
}
