import 'package:flutter/material.dart';
import 'package:shop_easy/view/Cartpage/checkoutscreen.dart';
import 'package:shop_easy/view/Cartpage/product_detail.dart';

import '../../res/constant/app_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.notifications_none_outlined),
          SizedBox(
            width: screenWidth / 20,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: ListView(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailScreen(),
                        ));
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/cart.png",
                        width: double.infinity,
                        height: screenHeight / 2.5,
                      ),
                      Align(
                        heightFactor: screenHeight / 373,
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/images/cart2.png",
                          width: screenWidth / 1.15,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/cart3.png",
                      width: double.infinity,
                      height: screenHeight / 2.5,
                    ),
                    Align(
                      heightFactor: screenHeight / 373,
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/images/cart2.png",
                        width: screenWidth / 1.15,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutScreen(),
                      ),
                    );
                  },
                  child: const Text("Checkout",
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.w600)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
