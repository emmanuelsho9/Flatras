import 'package:flutter/material.dart';

class TapHome extends StatelessWidget {
   TapHome({Key? key, this.Tapcontroller}) : super(key: key);

  TabController? Tapcontroller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DefaultTabController(
        length: 3,
        child: TabBar(
          indicatorColor: Color(0xFF7F23A8),
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            controller: Tapcontroller,
            tabs : const [
          Text("Watchlist", style: TextStyle(
            color: Colors.black
          ),),
          Text("Token",style: TextStyle(
              color: Colors.black)),
          Text("NFT",style: TextStyle(
              color: Colors.black)),
        ]),
      ),
    );
  }
}
