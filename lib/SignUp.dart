// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscure = false;
  void _toggleObscureText() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              // Background Image
              child: Image.asset(
            "assets/sign.jpg",
            fit: BoxFit.cover,
          )),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                const SizedBox(
                  height: 10,
                ),
                // Full Name Text Field
                const Text(
                  "Full Name",
                  style: TextStyle(
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Full Name",
                  hintStyle: const TextStyle(
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16),
                )),
                const SizedBox(
                  height: 20,
                ),
                // E_MAil Text Field
                const Text(
                  "E-Mail",
                  style: TextStyle(
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "E-Mail",
                    hintStyle: const TextStyle(
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                TextField(
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                        onPressed: _toggleObscureText,
                        icon: Icon(_obscure
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 16),
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFE724C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text.rich(
                    TextSpan(
                      text: "Already have an account ? ",
                      style: TextStyle(
                          color: Color(0xff5B5B5E),
                          fontWeight: FontWeight.normal,
                          fontFamily: "Sofia Pro",
                          fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Login?",
                          style: TextStyle(
                              color: Color(0xffFE724C),
                              fontWeight: FontWeight.normal,
                              fontFamily: "Sofia Pro",
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                const Row(children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xff5B5B5E),
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'Sign up with',
                    style: TextStyle(
                        color: Color(0xff5B5B5E),
                        fontSize: 14,
                        fontFamily: "Sofia Pro",
                        fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xff5B5B5E),
                      thickness: 1,
                      indent: 10,
                    ),
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset("assets/Group 17863.png"),
                      label: const Text("FACEBOOK",
                          style: TextStyle(
                              fontFamily: "Sofia Pro",
                              fontWeight: FontWeight.normal)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(139.26, 50),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset("assets/Group 17967.png"),
                      label: const Text("GOOGLE",
                          style: TextStyle(
                              fontFamily: "Sofia Pro",
                              fontWeight: FontWeight.normal)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(139.26, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
