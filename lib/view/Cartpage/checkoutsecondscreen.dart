import 'package:flutter/material.dart';
import 'package:shop_easy/view/Cartpage/payment_details.dart';
import 'package:shop_easy/view/Cartpage/successpage.dart';

import '../../res/constant/app_colors.dart';

class CheckoutSecondScreen extends StatefulWidget {
  const CheckoutSecondScreen({super.key});

  @override
  State<CheckoutSecondScreen> createState() => _CheckoutSecondScreenState();
}

class _CheckoutSecondScreenState extends State<CheckoutSecondScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Checkout",
          style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images4/checkout2.png",
                height: 25,
                width: screenWidth / 1.5,
              ),
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentDetailScreen(),
                    ));
              },
              child: Image.asset(
                "assets/images4/card.png",
                height: screenHeight / 4,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            const Text(
              "Details",
              style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 18),
            ),
            SizedBox(
              height: screenHeight / 70,
            ),
            const Row(
              children: [
                Text(
                  "Card Number",
                  style: TextStyle(
                      color: Color(0xFFA1A1A1),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 13),
                ),
                Spacer(),
                Text(
                  "5153 7455 1285 8238",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 70,
            ),
            const Row(
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                      color: Color(0xFFA1A1A1),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 13),
                ),
                Spacer(),
                Text(
                  "Dolores Chambers",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 70,
            ),
            const Row(
              children: [
                Text(
                  "Expiry Date",
                  style: TextStyle(
                      color: Color(0xFFA1A1A1),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 13),
                ),
                Spacer(),
                Text(
                  "07/24",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 70,
            ),
            const Row(
              children: [
                Text(
                  "CVC/CVV",
                  style: TextStyle(
                      color: Color(0xFFA1A1A1),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 13),
                ),
                Spacer(),
                Text(
                  "284",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 23,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
                  fixedSize: MaterialStatePropertyAll(
                      Size(screenWidth / 1, screenHeight / 18)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xFF9B4100))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentDetailScreen(),
                    ));
              },
              child: const Text("Change Card",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: screenHeight / 55,
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
                      builder: (context) => const SuccessScreen(),
                    ),
                    (route) => false);
              },
              child: const Text("Confirm Purchase",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
