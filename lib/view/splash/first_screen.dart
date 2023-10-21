import 'package:flutter/material.dart';
import 'package:shop_easy/view/Log_in/sign_in.dart';

import '../../res/constant/constant.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppAssets.imagelogo,
              height: 30,
              width: 163,
            ),
          ),
        ],
      ),
    );
  }
}
