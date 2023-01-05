import 'package:flutter/material.dart';

import 'class/allView.dart';

class HomePageView extends StatefulWidget {
   HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(

            children:  [
              const TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xFF7F23A8),
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                labelPadding: EdgeInsets.fromLTRB(5, 10, 5, 9),
                indicatorColor: Color(0xFF7F23A8),
                indicatorWeight: 2,

                physics: AlwaysScrollableScrollPhysics(),
                tabs: [
                  Text("All"),
                  Text("Active"),
                  Text("Completed", style: TextStyle(
                    fontSize: 11.5
                  ),),
                  Text("Disputed"),

                ],

              ),
              Expanded(
                child: TabBarView(

                  children: [
                    AllPage(),
                    AllPage(),
                    AllPage(),
                    AllPage(),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
