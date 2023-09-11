import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New Card",
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
            TextField(
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset("assets/images2/Mastercard.png",
                      height: 38, width: 25),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                // contentPadding: const EdgeInsets.all(00),
                isDense: true,

                labelText: "Card Number",
                labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A1A1)),
                // hintText: "Enter email ",
                contentPadding: const EdgeInsets.all(12),
                // hintStyle: const TextStyle(
                //     color: Color(0xFFB3B3B3),
                //     fontSize: 16,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                // contentPadding: const EdgeInsets.all(00),
                isDense: false,
                labelText: "Cardholder’s Name",
                labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A1A1)),
                // hintText: "Enter email ",
                contentPadding: const EdgeInsets.all(12),
                // hintStyle: const TextStyle(
                //     color: Color(0xFFB3B3B3),
                //     fontSize: 16,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.calendar_month)
                    // Image.asset("assets/images2/Mastercard.png",
                    //     height: 38, width: 25),
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                // contentPadding: const EdgeInsets.all(00),
                isDense: false,
                labelText: "Expiry Date",
                labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A1A1)),
                // hintText: "Enter email ",
                contentPadding: const EdgeInsets.all(12),
                // hintStyle: const TextStyle(
                //     color: Color(0xFFB3B3B3),
                //     fontSize: 16,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.info_outline)
                    // Image.asset("assets/images2/Mastercard.png",
                    //     height: 38, width: 25),
                    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                // contentPadding: const EdgeInsets.all(00),
                isDense: false,
                labelText: "CVC/CVV",
                labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA1A1A1)),
                // hintText: "Enter email ",
                contentPadding: const EdgeInsets.all(12),
                // hintStyle: const TextStyle(
                //     color: Color(0xFFB3B3B3),
                //     fontSize: 16,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
