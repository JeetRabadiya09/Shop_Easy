import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';
import 'package:shop_easy/view/Home/mainhomescreen.dart';
import 'package:shop_easy/view/Homepage/section.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images4/c1.png",
  },
  {
    "image": "assets/images4/c2.png",
  },
  {
    "image": "assets/images4/c3.png",
  },
  {
    "image": "assets/images4/c4.png",
  },
  {
    "image": "assets/images4/c5.png",
  },
  {
    "image": "assets/images4/c6.png",
  },
  {
    "image": "assets/images4/c7.png",
  },
  {
    "image": "assets/images4/c8.png",
  },
  {
    "image": "assets/images4/c9.png",
  },
  {
    "image": "assets/images4/c10.png",
  },
  {
    "image": "assets/images4/c11.png",
  },
  {
    "image": "assets/images4/c12.png",
  },
  {
    "image": "assets/images4/c13.png",
  },
  {
    "image": "assets/images4/c14.png",
  },
  {
    "image": "assets/images4/c15.png",
  },
  {
    "image": "assets/images4/c16.png",
  },
  {
    "image": "assets/images4/c17.png",
  },
  {
    "image": "assets/images4/c18.png",
  },
];

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainHomeScreen(),
                ));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(
              color: AppColors.black,
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: ListView(
          children: [
            Column(
              children: [
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 18,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    // mainAxisSpacing: 05,
                    mainAxisExtent: 135,
                  ),
                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SectionScreen(),
                              ));
                        },
                        child: Image.asset(
                          imageList[index]["image"],
                          width: screenWidth / 5,
                          height: screenHeight / 9,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
