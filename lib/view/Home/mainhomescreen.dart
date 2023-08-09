import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';

import '../Homepage/cartscreen.dart';
import '../Homepage/favstoresscreen.dart';
import '../Homepage/homescreen.dart';
import '../Homepage/profile.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentIndex = 0;

  List<Widget> ScreenList = [
    const HomeScreen(),
    const FavStoreScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Color(0xFFFFFFFF),
        labelBehavior: ,
        destinations: const [
          NavigationDestination(

            selectedIcon: Icon(Icons.home_outlined, color: AppColors.orange),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.tickets, color: AppColors.orange),
            icon: Icon(CupertinoIcons.tickets),
            label: 'Book',

          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.bookmark_border_outlined, color: AppColors.orange),
            icon: Icon(Icons.bookmark_border_outlined),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.person_outline_sharp, color: AppColors.orange),
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
