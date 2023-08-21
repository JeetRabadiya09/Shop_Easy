import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';
import 'package:shop_easy/view/Homepage/section.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({super.key});

  @override
  State<StoreProfile> createState() => _StoreProfileState();
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
];
List<Map<String, dynamic>> shirtList = [
  {
    "image": "assets/images2/q1.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/q2.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images2/q3.png",
    "title": "Product Name",
  },
];
List<Map<String, dynamic>> shirttwoList = [
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

class _StoreProfileState extends State<StoreProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth / 20),
            child: Image.asset("assets/images2/notification.png",
                height: 24, width: 24),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images2/store profile.png",
                  height: screenHeight / 9,
                  width: screenWidth / 4,
                ),
                SizedBox(
                  height: screenHeight / 55,
                ),
                const Text(
                  "Boots & Boots",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Row(
                  children: [
                    const Text(
                      "8502 Preston Rd. Inglewood, Maine 98380",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images2/heart.png",
                      height: screenHeight / 15,
                      width: screenWidth / 15,
                    ),
                  ],
                ),
                const Divider(
                  height: 1,
                  color: Color(0xFFD3D3D3),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                const Text(
                  "Shoes",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 40,
                    mainAxisExtent: 283,
                  ),
                  itemBuilder: (context, index) => index == 3
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    AppColors.white),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        side: const BorderSide(
                                            color: AppColors.black,
                                            width: 0.8))),
                                fixedSize: MaterialStatePropertyAll(
                                    Size(screenWidth / 2.6, screenHeight / 18)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SectionScreen(),
                                    ));
                              },
                              child: const Row(
                                children: [
                                  Text("See more",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w400)),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Container(
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
                                                color: Color(0xFF9B0000),
                                                size: 20),
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
                SizedBox(
                  height: screenHeight / 50,
                ),
                const Text(
                  "Male Shirts",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 40,
                    mainAxisExtent: 283,
                  ),
                  itemBuilder: (context, index) => index == 3
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    AppColors.white),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        side: const BorderSide(
                                            color: AppColors.black,
                                            width: 0.8))),
                                fixedSize: MaterialStatePropertyAll(
                                    Size(screenWidth / 2.6, screenHeight / 18)),
                              ),
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Text("See more",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w400)),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Container(
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
                                    shirtList[index]["image"],
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
                                                color: Color(0xFF9B0000),
                                                size: 20),
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
                                    shirttwoList[index]["image"],
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 03,
                                  ),
                                  Image.asset(
                                    shirttwoList[index]["image"],
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 03,
                                  ),
                                  Image.asset(
                                    shirttwoList[index]["image"],
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 03,
                                  ),
                                  Image.asset(
                                    shirttwoList[index]["image"],
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(
                                    width: 03,
                                  ),
                                  Image.asset(
                                    shirttwoList[index]["image"],
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
                                    shirtList[index]["title"],
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
