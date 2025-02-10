// ignore_for_file: depend_on_referenced_packages, unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            // Background image that we used to cover the welcome screen..
            child: Image.asset(
              "assets/brooke-lark-lcZ9NxhOSlo-unsplash1.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // the (Skip button that is located at the top right of the page)
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Color(0xffFE724C),
                            fontSize: 12,
                            fontFamily: "Sofia Pro"),
                      )),
                ),
                const Spacer(),

                /// Welcome to,
                const Text(
                  "Welcome to",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48),
                  textAlign: TextAlign.left,
                ),
                // FoodHub
                const Text(
                  "FoodHub",
                  style: TextStyle(
                      color: Color(0xffFE724C),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Your favourite foods delivered fast at your door.
                const Text(
                  "Your favourite foods delivered",
                  style: TextStyle(
                      color: Color(0xff30384F),
                      fontFamily: "Sofia Pro",
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  "fast at your door.",
                  style: TextStyle(
                      color: Color(0xff30384F),
                      fontFamily: "Sofia Pro",
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                const Row(children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'sign in with',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Sofia Pro",
                        fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
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
                        side: const BorderSide(color: Colors.blue),
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
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text("Start with E-Mail or phone",
                        style: TextStyle(
                            fontFamily: "Sofia Pro",
                            color: Colors.black,
                            fontWeight: FontWeight.normal))),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Already have an account ? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Sofia Pro"),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign In?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Sofia Pro",
                                decoration: TextDecoration.underline))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
