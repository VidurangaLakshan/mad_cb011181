import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/order.dart';
import 'package:untitled/screens/profile.dart';
import 'package:untitled/screens/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Wallet wallet;
  late Order order;
  late Profile profile;

  @override
  void initState() {
    homepage = Home();
    wallet = Wallet();
    order = Order();
    profile = Profile();
    pages = [homepage, order, wallet, profile];
    // currentPage = homepage;
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              // currentPage = pages[index];
            });
          },
          items: [
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
      ]),
      body: pages[currentTabIndex],
    );
  }
}

