import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';
import 'package:shop_easy/view/Homepage/searchthirdscreen.dart';

class SearchSecondScreen extends StatefulWidget {
  const SearchSecondScreen({super.key});

  @override
  State<SearchSecondScreen> createState() => _SearchSecondScreenState();
}

class _SearchSecondScreenState extends State<SearchSecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: screenHeight / 20,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD3D3D3), width: 1),
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(110),
              ),
              padding: EdgeInsets.all(10),
              child: const Text(
                "B",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchThirdScreen(),
                  ),
                );
              },
              child: const Text(
                "Boots",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              ),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const Text(
              "Bracelets",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const Text(
              "Bags",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const Text(
              "Baby stuffs",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: screenHeight / 50,
            ),
            const Text(
              "Bows",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
