import 'package:flatra/features/home/screens/home.dart';
import 'package:flatra/utils/colors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Savings Screen/Savings Screen.dart';
import '../Wallet/wallet.dart';
import '../setting/User.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("Market"),
    //Text("wallet"),
     wallet(),
     SavingsScreenHome(),
    SettingUser(),

  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: FloatingNavbar(
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: kSecondaryColor,
        backgroundColor: kPrimaryColor,
        onTap: (int val) => setState(() => _selectedIndex = val),
        currentIndex: _selectedIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Icons.explore),
          FloatingNavbarItem(icon: Icons.account_balance_wallet),
          FloatingNavbarItem(icon: Icons.bar_chart_sharp),
          FloatingNavbarItem(icon: Ionicons.person_circle),
        ],
      ),
    );
  }
}
