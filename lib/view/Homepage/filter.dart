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
        child: ListView(
          children: [
            Column(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Popularity",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: screenHeight / 28,
                              ),
                              const Text(
                                "New",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: screenHeight / 28,
                              ),
                              const Text(
                                "Price Ascending",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: screenHeight / 28,
                              ),
                              const Text(
                                "Price Descending",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: screenHeight / 28,
                              ),
                              const Text(
                                "Rating",
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
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight / 10,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 08, color: Color(0xFFF5F5F5))
                    ],
                  ),
                  padding: EdgeInsets.all(screenWidth / 15),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_drop_down_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight / 10,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 08, color: Color(0xFFF5F5F5))
                    ],
                  ),
                  padding: EdgeInsets.all(screenWidth / 15),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_drop_down_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight / 5.15,
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
                            "Price",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xFFF5F5F5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/images4/frame.png",
                          width: 286, height: 45),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: const BorderSide(
                                color: AppColors.orange, width: 2))),
                        fixedSize: MaterialStatePropertyAll(
                            Size(screenWidth / 2.7, screenHeight / 18)),
                      ),
                      onPressed: () {},
                      child: const Text("Reset",
                          style: TextStyle(
                              color: AppColors.orange,
                              fontWeight: FontWeight.w600)),
                    ),
                    // SizedBox(
                    //   width: screenWidth / 20,
                    // ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6))),
                          fixedSize: MaterialStatePropertyAll(
                              Size(screenWidth / 2.7, screenHeight / 18)),
                          backgroundColor:
                              const MaterialStatePropertyAll(AppColors.orange)),
                      onPressed: () {},
                      child: const Text("Apply",
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
