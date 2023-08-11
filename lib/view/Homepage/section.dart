import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';
import 'package:shop_easy/view/Homepage/categories.dart';

class SectionScreen extends StatefulWidget {
  const SectionScreen({super.key});

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images2/z1.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z2.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z3.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z4.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z5.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z6.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z7.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z8.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z9.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z10.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z11.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/z12.png",
    "title": "Product Name",
  },
];
List<Map<String, dynamic>> imagetwoList = [
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
  {
    "image": "assets/images/Star 14.png",
  },
];

class _SectionScreenState extends State<SectionScreen> {
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
                  builder: (context) => const CategoriesScreen(),
                ));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Shoes",
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
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 40,
                    mainAxisExtent: 283,
                  ),
                  itemBuilder: (context, index) => Container(
                    width: 167,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 06, color: const Color(0x99FFFFFF)),
                        color: const Color(0xFFF5F5F5)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              imageList[index]["image"],
                              width: 167,
                              height: 168,
                            ),
                            const Positioned(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Icon(Icons.favorite_border,
                                          color: Color(0xFF9B0000), size: 20),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight / 80,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 04,
                            ),
                            Image.asset(
                              imagetwoList[index]["image"],
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 03,
                            ),
                            Image.asset(
                              imagetwoList[index]["image"],
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 03,
                            ),
                            Image.asset(
                              imagetwoList[index]["image"],
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 03,
                            ),
                            Image.asset(
                              imagetwoList[index]["image"],
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 03,
                            ),
                            Image.asset(
                              imagetwoList[index]["image"],
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(
                              width: 03,
                            ),
                            const Text(
                              "(5.0)",
                              style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  fontSize: 11.2),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 04,
                            ),
                            Text(
                              imageList[index]["title"],
                              style: const TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 04,
                            ),
                            Text(
                              "\$841.00",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color(0xA11E1E1E),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 06,
                            ),
                            Text(
                              "\$841.00",
                              style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
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
