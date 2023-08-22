import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class ElevetedCommon extends StatelessWidget {
  const ElevetedCommon({super.key, this.name});
  final String? name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          fixedSize: MaterialStatePropertyAll(
              Size(screenWidth / 1, screenHeight / 18)),
          backgroundColor: const MaterialStatePropertyAll(AppColors.orange)),
      onPressed: () {},
      child: Text(name ?? "",
          style: const TextStyle(
              color: AppColors.white, fontWeight: FontWeight.w600)),
    );
  }
}
