import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int? radioButton = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Filter",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColors.black)),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight / 2.4,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(blurRadius: 08, color: Color(0xFFF5F5F5))
                ],
              ),
              padding: EdgeInsets.all(screenWidth / 15),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Sort By",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_up_outlined),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 50,
                  ),
                  const Divider(
                    height: 1,
                    color: Color(0xFFF5F5F5),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.orange),
                            value: 1,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.orange),
                            value: 2,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.orange),
                            value: 3,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.orange),
                            value: 4,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                          Radio(
                            fillColor: const MaterialStatePropertyAll(
                                AppColors.orange),
                            value: 5,
                            groupValue: radioButton,
                            onChanged: (value) {
                              radioButton = value;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            "Popularity",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: screenHeight / 40,
                          ),
                          const Text(
                            "Popularity",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: screenHeight / 40,
                          ),
                          const Text(
                            "Popularity",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: screenHeight / 40,
                          ),
                          const Text(
                            "Popularity",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: screenHeight / 40,
                          ),
                          const Text(
                            "Popularity",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
