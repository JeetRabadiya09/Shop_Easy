import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import 'checkoutsecondscreen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
        padding: EdgeInsets.all(
          screenWidth / 20,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images4/checkout.png",
                height: 25,
                width: screenWidth / 1.5,
              ),
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            Container(
              height: screenHeight / 7.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 03, color: Color(0xFFD9D9D9)),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(screenWidth / 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images4/ch1.png",
                    width: screenWidth / 5,
                    height: screenHeight / 4,
                  ),
                  SizedBox(
                    width: screenWidth / 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum hobel\noligt nesm dejun\nLadies Boot",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                      Text(
                        "35 EU",
                        style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 11),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth / 25,
                  ),
                  const Text(
                    "\$841.00",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 35,
            ),
            Container(
              height: screenHeight / 7.5,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 03, color: Color(0xFFD9D9D9)),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(screenWidth / 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images4/ch2.png",
                    width: screenWidth / 5,
                    height: screenHeight / 4,
                  ),
                  SizedBox(
                    width: screenWidth / 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum hobel\noligt nesm dejun\nLadies Boot",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                      Text(
                        "10 ml",
                        style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 11),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth / 25,
                  ),
                  const Text(
                    "\$841.00",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 35,
            ),
            Container(
              height: screenHeight / 5.4,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 03, color: Color(0xFFD9D9D9)),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(screenWidth / 25),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "\$1682.00",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 50,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Shipping",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "\$5",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xFFD3D3D3),
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        "\$1687.00",
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontSize: 22),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 30,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutSecondScreen(),
                  ),
                );
              },
              child: const Text("Proceed to Payment",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }
}
