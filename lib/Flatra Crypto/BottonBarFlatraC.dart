import 'package:flatra/features/home/screens/home.dart';
import 'package:flatra/utils/colors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Wallet/wallet.dart';
import '../setting/User.dart';
import 'Flatra Crypto.dart';
import 'Home/homeFlatra.dart';

class FlatraCryptoBottomBar extends StatefulWidget {
  const FlatraCryptoBottomBar({super.key});

  @override
  State<FlatraCryptoBottomBar> createState() => _FlatraCryptoBottomBarState();
}

class _FlatraCryptoBottomBarState extends State<FlatraCryptoBottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeFlatra(),
    //Text("home"),
    FlatraCrypto(),

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
        width: MediaQuery.of(context).size.width-250,
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: kSecondaryColor,
        backgroundColor: kPrimaryColor,
        onTap: (int val) => setState(() => _selectedIndex = val),
        currentIndex: _selectedIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Ionicons.person_circle),
        ],
      ),
    );
  }
}
