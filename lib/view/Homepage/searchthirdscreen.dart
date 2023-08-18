import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import '../Favstorepage/store_profile.dart';
import 'filter.dart';

class SearchThirdScreen extends StatefulWidget {
  const SearchThirdScreen({super.key});

  @override
  State<SearchThirdScreen> createState() => _SearchThirdScreenState();
}

List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images3/p1.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p2.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p3.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p4.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p5.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p6.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p7.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p8.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p9.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p10.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p11.png",
    "title": "Product Name",
  },
  {
    "image": "assets/images3/p12.png",
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
List<Map<String, dynamic>> Searchlist = [
  {
    "image": "assets/images3/st1.png",
    "title": "Boots & Boots",
    "name": "8502 Preston Rd. Inglewood, Maine 98380",
  },
  {
    "image": "assets/images3/st2.png",
    "title": "Karen’s Boots",
    "name": "3517 W. Gray St. Utica, Pennsylvania 57867",
  },
  {
    "image": "assets/images3/st3.png",
    "title": "Booty",
    "name": "3891 Ranchview Dr. Richardson, California...",
  },
  {
    "image": "assets/images3/st4.png",
    "title": "Boot Fountsain",
    "name": "2464 Royal Ln. Mesa, New Jersey 45463",
  },
  {
    "image": "assets/images3/st5.png",
    "title": "All Boots",
    "name": "1901 Thornridge Cir. Shiloh, Hawaii 81063",
  },
];

class _SearchThirdScreenState extends State<SearchThirdScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    final _Tabbarpages = <Widget>[
      GridView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
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
              border: Border.all(width: 06, color: const Color(0x99FFFFFF)),
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
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 75,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StoreProfile(),
              ),
            );
          },
          child: Container(
            // height: 388,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(blurRadius: 02, color: Color(0xFFD9D9D9))
              ],
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding:
                EdgeInsets.only(left: screenWidth / 40, top: screenHeight / 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset(
                      Searchlist[index]["image"],
                      width: screenWidth / 7,
                      height: screenHeight / 17,
                    )
                  ],
                ),
                SizedBox(
                  width: screenWidth / 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Searchlist[index]["title"],
                      style: const TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                    Text(
                      Searchlist[index]["name"],
                      style: const TextStyle(
                          color: AppColors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: screenWidth / 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FilterScreen(),
                    ),
                  );
                },
                child: Image.asset(
                  "assets/images3/filter.png",
                  height: screenHeight / 15,
                  width: screenWidth / 15,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            // splashBorderRadius: const BorderRadius.all(Radius.circular(20)),

            // overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            unselectedLabelColor: AppColors.black,
            labelColor: AppColors.black,
            indicatorColor: AppColors.orange,
            indicatorSize: TabBarIndicatorSize.tab,

            // dividerColor: AppColors.white,
            // splashBorderRadius: BorderRadius.circular(30),
            padding: EdgeInsets.only(
                right: screenWidth / 20, left: screenWidth / 20),
            tabs: const [
              Tab(
                child: Text(
                  "Products",
                  style: TextStyle(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w400,
                  ),
                  // text: "Available",
                ),
              ),
              Tab(
                child: Text("Stores",
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w400,
                    )),
                // text: "Add new",
              ),
            ],
            // indicator: ShapeDecoration(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(6),
            //   ),
            //   color: const Color(0xFF1D951A),
            // ),

            indicatorPadding: const EdgeInsets.all(1),
            labelPadding: EdgeInsets.zero,
          ),
        ),

        body: Padding(
          padding: EdgeInsets.all(screenWidth / 20),
          child: TabBarView(
            children: _Tabbarpages,
          ),
        ),
        // body: Padding(
        //   padding: EdgeInsets.all(screenWidth / 20),
        //   child: Column(
        //     children: [
        //       Container(
        //         width: double.infinity,
        //         height: screenHeight / 20,
        //         decoration: BoxDecoration(
        //           border: Border.all(color: const Color(0xFFD3D3D3), width: 1),
        //           color: const Color(0xFFF5F5F5),
        //           borderRadius: BorderRadius.circular(110),
        //         ),
        //         padding: const EdgeInsets.all(10),
        //         child: const Text(
        //           "Boots",
        //           style: TextStyle(
        //               fontSize: 14,
        //               fontWeight: FontWeight.w400,
        //               color: AppColors.black),
        //         ),
        //       ),
        //       const DefaultTabController(
        //         //optional, starts from 0, select the tab by default
        //         length: 2,
        //         child: TabBar(
        //                   splashBorderRadius: BorderRadius.all(Radius.circular(20)),
        //
        //                   overlayColor: MaterialStatePropertyAll(Colors.transparent),
        //                   unselectedLabelColor: AppColors.black,
        //                   labelColor: AppColors.black,
        //                   indicatorColor: AppColors.orange,
        //                   indicatorSize: TabBarIndicatorSize.tab,
        //
        //                   // dividerColor: AppColors.white,
        //                   // splashBorderRadius: BorderRadius.circular(30),
        //                   tabs: [
        //                     Tab(
        //                       child: Text(
        //                         "Products",
        //                         style: TextStyle(
        //                           fontSize: 11.5,
        //                           fontWeight: FontWeight.w400,
        //                         ),
        //                         // text: "Available",
        //                       ),
        //                     ),
        //                     Tab(
        //                       child: Text("Stores",
        //                   style: TextStyle(
        //                     fontSize: 11.5,
        //                     fontWeight: FontWeight.w400,
        //                   )),
        //               // text: "Add new",
        //             ),
        //           ],
        //           indicator: ShapeDecoration(
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             color: const Color(0xFF1D951A),
        //           ),
        //
        //           indicatorPadding: EdgeInsets.all(2),
        //           labelPadding: EdgeInsets.zero,
        //         ),
        //       ),
        //       const TabBarView(
        //         children: [
        //           CategoriesScreen(),
        //           SectionScreen(),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
