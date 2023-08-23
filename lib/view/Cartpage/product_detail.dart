import 'package:flutter/material.dart';
import 'package:shop_easy/res/constant/app_colors.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(Icons.notifications_none_outlined),
          SizedBox(
            width: screenWidth / 20,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(screenWidth / 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                "assets/images4/product.png",
                width: double.infinity,
                height: screenHeight / 2,
              ),
              SizedBox(height: screenHeight / 40),
              const Text(
                  "Lörem ipsum derertad rejase inte homoling\nprel syjetägt sen lados Ladies Boot.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.black)),
              SizedBox(
                height: screenHeight / 60,
              ),
              const Row(
                children: [
                  Text(
                    "\$841.00",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "\$841.00",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 22),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 70),
              const Text(
                  "Today’s Fortune 500 list rolls over faster than ever. Today, only 12 percent of the companies that made the list in 1955 still remain.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.black)),
              SizedBox(height: screenHeight / 40),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFD700),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFD700),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFD700),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFD3D3D3),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFD3D3D3),
                  ),
                  Spacer(),
                  Text(
                    "3.0",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight / 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                    fixedSize: MaterialStatePropertyAll(
                        Size(screenWidth / 1, screenHeight / 18)),
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.orange)),
                onPressed: () {},
                child: const Text("Add to Cart",
                    style: TextStyle(
                        color: AppColors.white, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: screenHeight / 60,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                    fixedSize: MaterialStatePropertyAll(
                        Size(screenWidth / 1, screenHeight / 18)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF9B4100))),
                onPressed: () {},
                child: const Text("Add to Wishlist",
                    style: TextStyle(
                        color: AppColors.white, fontWeight: FontWeight.w600)),
              ),
              Row(
                children: [
                  const Text(
                    "Reviews",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                  const Spacer(),
                  const Text(
                    "See All",
                    style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 14),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_outlined))
                ],
              ),
              Container(
                height: screenHeight / 3.7,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(blurRadius: 03, color: Color(0xFFD9D9D9)),
                    ],
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(screenWidth / 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Marci Senter",
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontSize: 14),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFD700),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFD3D3D3),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFD3D3D3),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight / 70,
                    ),
                    const Text(
                      "It is difficult to trust anyone again after dealing "
                      "with obstructive tenants. We contacted Morag from The "
                      "Good Estate Agents, after being recommended to her by a"
                      " colleague. Due to her understanding and professionalism"
                      " the property was relet within a few days. Her service was"
                      " outstanding, you could say five stars!",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 13),
                    ),
                    const Text(
                      "See All",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}
