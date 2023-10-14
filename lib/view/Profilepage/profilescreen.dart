import 'package:flutter/material.dart';

import '../Cartpage/payment_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfilePoseState();
}

class _ProfilePoseState extends State<ProfileScreen> {
  List iconsList = [
    "assets/images/r1.png",
    "assets/images/r2.png",
    "assets/images/r3.png",
    "assets/images/r4.png",
    "assets/images/r5.png",
    "assets/images/r6.png",
    "assets/images/r7.png",
    "assets/images/r8.png",
    "assets/images/r9.png",
  ];
  List profilecategory = [
    "General Setting",
    "Payment Methods",
    "Shipping Address",
    "Wishlist",
    "History",
    "Customer Support",
    "Help",
    "Privacy Policy",
    "Log Out",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Profile Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              excludeFromSemantics: true,
              onTap: () {},
              child: Image.asset(
                "assets/images2/notification.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0x62C2C1C1),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "assets/images/person.png",
                    height: 80,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Dolores Chambers",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "dolores.chambers@example.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 13,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                    Image.asset(
                      "assets/images/rename.png",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 0) {
                        // Navigator.push(
                        //   context,
                        //   // MaterialPageRoute(
                        //   //   builder: (context) => GeneralSetting(),
                        //   // ),
                        // );
                      } else if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentDetailScreen(),
                          ),
                        );
                      } else if (index == 2) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ShippingAddress(),
                        //   ),
                        // );
                      } else if (index == 3) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => WishListPage(),
                        //   ),
                        // );
                      } else if (index == 4) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => HistoryPage(),
                        //   ),
                        // );
                      }
                      debugPrint("Third Screen------->");
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          iconsList[index],
                        ),
                        const SizedBox(width: 15),
                        Text(
                          profilecategory[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "WorkSans",
                            fontSize: 15,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 17),
                  itemCount: 9,
                ),
              ],
            ),
          ),
        ),
      ),
      // drawer: const Drawer(),
    );
  }
}
