import 'package:flutter/material.dart';
import 'package:shop_easy/view/Log_in/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Sign In.png"),
          ),
        ),
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(screenWidth / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return "Enter email id ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: "E-mail",
                    hintText: "Enter email ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^[a-zA-Z0-9]{6}$").hasMatch(value!)) {
                      return "Enter Passcode";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: "Passcode",
                    hintText: "Enter passcode ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: Container(
                    height: screenHeight / 15,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: Container(
                    height: screenHeight / 15,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png",
                            width: screenWidth / 10, height: screenHeight / 10),
                        SizedBox(
                          width: screenWidth / 50,
                        ),
                        const Text(
                          "Log In with Google",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      // style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 18),
                      children: [
                        TextSpan(
                            text: 'A new member?',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1E1E1E),
                              fontFamily: "Poppins",
                            )),
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFFCD7300),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
