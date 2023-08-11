import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_assets.dart';
import 'package:shop_easy/res/constant/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images/h1.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/h2.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/h3.png",
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

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  leading: const Icon(Icons.menu),
                  actions: const [Icon(Icons.notifications_none_outlined)],
                ),
                Image.asset(
                  AppAssets.imagenice,
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight / 20,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      border:
                          Border.all(width: 1, color: const Color(0xFFD3D3D3)),
                      borderRadius: BorderRadius.circular(110)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset("assets/images/search.png",
                          width: screenWidth / 15, height: screenHeight / 15),
                      SizedBox(
                        width: screenWidth / 35,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Groceries, Dresses, suits, etc",
                          style: TextStyle(
                              color: AppColors.black,
                              fontFamily: "Poppins",
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.imagemen,
                        width: screenWidth / 06,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset(
                        AppAssets.imagewomen,
                        width: screenWidth / 06,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset(
                        AppAssets.imagebaby,
                        width: screenWidth / 06,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset(
                        AppAssets.imagegroceris,
                        width: screenWidth / 06,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset(
                        AppAssets.imageelectronic,
                        width: screenWidth / 05,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Image.asset(
                        AppAssets.imagebeauty,
                        width: screenWidth / 06,
                        height: screenHeight / 10,
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      Container(
                        height: screenHeight / 08,
                        width: screenWidth / 08,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFD3D3D3))),
                        child: IconButton(
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen,),);
                            },
                            icon: const Icon(Icons.arrow_forward_outlined)),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "New",
                  style: TextStyle(
                      color: AppColors.black,
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
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
                        const SizedBox(
                          height: 09,
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
