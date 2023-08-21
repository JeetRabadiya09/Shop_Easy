import 'package:flutter/material.dart';
import 'package:shop_easy/view/Favstorepage/store_profile.dart';

class FavStoreScreen extends StatefulWidget {
  const FavStoreScreen({Key? key}) : super(key: key);

  @override
  State<FavStoreScreen> createState() => _FavStoreScreenState();
}

List<Map<String, dynamic>> gridview = [
  {
    "image": "assets/images/1.png",
    "title": "Store Name",
  },
  {
    "image": "assets/images/2.png",
    "title": "Store Name",
  },
  {
    "image": "assets/images/3.png",
    "title": "Store Name",
  },
  {
    "image": "assets/images/4.png",
    "title": "Store Name",
  },
];
List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images/s1.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s2.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s3.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s4.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s5.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s6.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s7.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images/s8.png",
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
];

class _FavStoreScreenState extends State<FavStoreScreen> {
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
                const Text(
                  "Favourite Stores",
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 17.5),
                ),
                SizedBox(
                  height: screenHeight / 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StoreProfile(),
                      ),
                    );
                  },
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 50,
                    ),
                    itemBuilder: (context, index) => Image.asset(
                      gridview[index]["image"],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 50,
                ),
                const Text(
                  "Product across favourite stores",
                  style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 17.5),
                ),
                SizedBox(
                  height: screenHeight / 50,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 8,
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
