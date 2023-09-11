import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_assets.dart';
import 'package:shop_easy/res/constant/app_colors.dart';
import 'package:shop_easy/res/constant/app_strings.dart';

import '../Home/mainhomescreen.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({Key? key}) : super(key: key);

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidth / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppStrings.confirmemail,
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: screenHeight / 20,
                ),
                Center(
                  child: Image.asset(
                    AppAssets.imageemail,
                    height: screenHeight / 3,
                    width: screenWidth / 1.5,
                  ),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                const Text(
                  AppStrings.confirmemail1,
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                const Text(
                  AppStrings.confirmemail2,
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  AppStrings.confirmemail3,
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                      fixedSize: MaterialStatePropertyAll(
                          Size(screenWidth / 1, screenHeight / 18)),
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.orange)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainHomeScreen(),
                        ),
                        (route) => false);
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushAndRemoveUntil(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => MainHomeScreen(),
                //         ),
                //         (route) => false);
                //   },
                //   child: Container(
                //     height: screenHeight / 17,
                //     width: double.infinity,
                //     alignment: Alignment.center,
                //     decoration: BoxDecoration(
                //       color: AppColors.orange,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: const Text(
                //       "Continue",
                //       style: TextStyle(
                //         fontSize: 14,
                //         fontFamily: "Poppins",
                //         fontWeight: FontWeight.w500,
                //         color: AppColors.white,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                const Text(
                  "Resend Email",
                  style: TextStyle(
                      color: AppColors.orangetwo,
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
