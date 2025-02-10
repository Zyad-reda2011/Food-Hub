import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget 
{
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Stack
      (
        children: 
        [
          Positioned.fill
          (
              // Background Image
              child: Image.asset
              (
                "assets/sign.jpg",
                fit: BoxFit.fill,
              )
          ),
          Align
          (
            alignment: Alignment.topLeft,
            child: ElevatedButton
                (
                  onPressed: ()
                  {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom
                  (
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape :ContinuousRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(4)
                      )
                  ),
                  child: const Text
                  (
                    "<",
                    style: TextStyle
                    (
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 15
                    ),
                  ),
                ),
          ),
          Padding
          (
            padding:
            const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: 
              [
                const Text
                (
                  // Login Word
                  "Reset Password",
                  style: TextStyle
                  (
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height : 10),
                // TextFields
                const Text
                (
                  "Please enter your email address to",
                  style: TextStyle
                  (
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16
                  ),
                ),
                const Text
                (
                  "Request a password reset",
                  style: TextStyle
                  (
                      color: Color(0xff9796A1),
                      fontWeight: FontWeight.normal,
                      fontFamily: "Sofia Pro",
                      fontSize: 16
                  ),
                ),
                const SizedBox(height : 20),
                TextField
                (
                  decoration: InputDecoration
                  (
                    border: OutlineInputBorder
                    (
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: "Backup E-mail Address",
                    hintStyle: const TextStyle
                    (
                        color: Color(0xff9796A1),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 18
                    ),
                  ),
                ),
                const SizedBox(height : 20),
                ElevatedButton
                (
                  onPressed: () 
                  {
                    Navigator.pushNamed(context, '/regestration');
                  },
                  style: ElevatedButton.styleFrom
                  (
                      backgroundColor: const Color(0xffFE724C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder
                      (
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),
                  child: const Text
                  (
                    "Send new Password",
                    style: TextStyle
                    (
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 15
                    ),
                  ),
                ),
              ]
            )
          )
        ]
      ),
    );
  }
}