import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  // Login Word
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48),
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                // TextFields
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
                    hintText: "Your Email or phone",
                    hintStyle: const TextStyle(
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),
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
                    // hintText: "Enter your Password ",
                    // hintStyle: const TextStyle(color:Color(0xff9796A1),fontWeight: FontWeight.normal , fontFamily: "Sofia Pro" , fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () 
                  {
                    Navigator.pushNamed(context, '/reset');
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Forgot Password ?",
                      style: TextStyle(
                          color: Color(0xffFE724C),
                          fontWeight: FontWeight.normal,
                          fontFamily: "Sofia Pro",
                          fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/verification');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFE724C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text.rich(
                    TextSpan(
                      text: "Don't have an account ? ",
                      style: TextStyle(
                          color: Color(0xff5B5B5E),
                          fontWeight: FontWeight.normal,
                          fontFamily: "Sofia Pro",
                          fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Sign up",
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
                    'Sign in with',
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
          )
        ],
      ),
    );
  }
}
