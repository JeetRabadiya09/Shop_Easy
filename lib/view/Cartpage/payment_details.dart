import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import 'add_card.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Methods",
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
          children: [
            Image.asset(
              "assets/images4/card.png",
              height: screenHeight / 4,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images2/card2.png",
              height: screenHeight / 4,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddCardScreen(),
                    ));
              },
              child: Image.asset(
                "assets/images2/card3.png",
                height: screenHeight / 4,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
