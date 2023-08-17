import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class SearchThirdScreen extends StatefulWidget {
  const SearchThirdScreen({super.key});

  @override
  State<SearchThirdScreen> createState() => _SearchThirdScreenState();
}

class _SearchThirdScreenState extends State<SearchThirdScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth / 20),
            child: Image.asset(
              "assets/images3/filter.png",
              height: screenHeight / 15,
              width: screenWidth / 15,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight / 20,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD3D3D3), width: 1),
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(110),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Boots",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
            ),
            const DefaultTabController(
              initialIndex:
                  1, //optional, starts from 0, select the tab by default
              length: 2,
              child: TabBar(
                splashBorderRadius: BorderRadius.all(Radius.circular(20)),

                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                unselectedLabelColor: AppColors.black,
                labelColor: AppColors.black,
                indicatorColor: AppColors.orange,
                indicatorSize: TabBarIndicatorSize.tab,

                // dividerColor: AppColors.white,
                // splashBorderRadius: BorderRadius.circular(30),
                tabs: [
                  Tab(
                    child: Text(
                      "Products",
                      style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w400,
                      ),
                      // text: "Available",
                    ),
                  ),
                  Tab(
                    child: Text("Stores",
                        style: TextStyle(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w400,
                        )),
                    // text: "Add new",
                  ),
                ],
                // indicator: ShapeDecoration(
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(6),
                //   ),
                //   color: const Color(0xFF1D951A),
                // ),

                indicatorPadding: EdgeInsets.all(2),
                labelPadding: EdgeInsets.zero,
              ),
            ),
            TabBarView(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
