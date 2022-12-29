
import 'package:flutter/material.dart';

import '../features/home/models/coin_data.dart';
import '../features/home/services/coin_data_service.dart';

class KnowCoin extends StatefulWidget {
   KnowCoin({Key? key}) : super(key: key);

  @override
  State<KnowCoin> createState() => _KnowCoinState();
}

class _KnowCoinState extends State<KnowCoin> {
   List<CoinData>posts=[];

   var isLoad = false;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  getApi() async {
      posts = (await CoinDataService.getCoinData())!;
     if(posts != null){
       setState(() {
         isLoad = true;
       });
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: posts.length, itemBuilder: (context, index) {
        return Visibility(
          visible: isLoad,
          replacement: const Center(child: CircularProgressIndicator()),
          child: Card(
            child: Column(
              children: [
                Text(posts[index].name),
                Text(posts[index].high24H.toString()),
                Image.network(posts[index].image)

              ],
            ),
          ),
        );
      },),
    );
  }
}
