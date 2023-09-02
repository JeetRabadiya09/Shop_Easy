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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(width: 0.8, color: Color(0x8EB3B3B3)),
                ),
                // contentPadding: const EdgeInsets.all(00),
                isDense: true,
                labelText: "Card Number",
                // hintText: "Enter email ",
                contentPadding: const EdgeInsets.all(12),
                hintStyle: const TextStyle(
                    color: Color(0xFFB3B3B3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
