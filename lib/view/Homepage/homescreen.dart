import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: Column(
          children: [
            AppBar(
              leading: const Icon(Icons.menu),
              actions: const [Icon(Icons.notifications_none_outlined)],
            ),
            Image.asset(
              AppAssets.imagenice,
            ),
            Container(
              width: double.infinity,
              height: screenHeight / 20,
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  border: Border.all(width: 1, color: Color(0xFFD3D3D3)),
                  borderRadius: BorderRadius.circular(110)),
              child: Row(
                children: [
                  Image.asset("assets/images/search.png",
                      width: screenWidth / 15, height: screenHeight / 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
