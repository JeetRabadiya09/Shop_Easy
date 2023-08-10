import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        // selectedColorOpacity: 01,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF6F6F6F),
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront_outlined, color: Colors.orange),
            label: 'Fav Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon:
                Icon(Icons.shopping_cart_outlined, color: Colors.orange),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            activeIcon: Icon(Icons.person_outline_sharp, color: Colors.orange),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
