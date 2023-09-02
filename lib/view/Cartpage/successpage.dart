import 'package:flutter/material.dart';
import 'package:shop_easy/view/Home/mainhomescreen.dart';

import '../../res/constant/app_colors.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images4/success.png",
              height: screenHeight / 3,
              width: double.infinity,
            ),
            SizedBox(
              height: screenHeight / 40,
            ),
            const Text(
              "Purchase Successful",
              style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 22),
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
                  fixedSize: MaterialStatePropertyAll(
                      Size(screenWidth / 2, screenHeight / 18)),
                  backgroundColor:
                      const MaterialStatePropertyAll(AppColors.orange)),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessScreen(),
                    ),
                    (route) => false);
              },
              child: const Text("Track Order",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: screenHeight / 60,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainHomeScreen(),
                    ),
                    (route) => false);
              },
              child: const Text(
                "Go back home",
                style: TextStyle(
                    color: AppColors.orangetwo,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
