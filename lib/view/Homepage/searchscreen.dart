import 'package:flutter/material.dart';
import 'package:shop_easy/view/Homepage/searchsecondscreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

List<Map<String, dynamic>> imageList = [
  {
    "image": "assets/images3/reload.png",
    "title": "Boots",
  },
  {
    "image": "assets/images3/reload.png",
    "title": "trousers",
  },
  {
    "image": "assets/images3/reload.png",
    "title": "Samsung S22",
  },
  {
    "image": "assets/images3/reload.png",
    "title": "Totes bag",
  },
  {
    "image": "assets/images3/reload.png",
    "title": "Strawberry",
  },
];

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 15),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchSecondScreen(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: screenHeight / 20,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD3D3D3), width: 1),
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(110),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 25,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Row(
                  children: [
                    Image.asset(
                      imageList[index]["image"],
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      imageList[index]["title"],
                      style: const TextStyle(
                          color: Color(0xFFA1A1A1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.north_east_outlined,
                      color: Color(0xFFA1A1A1),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
