import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack
      (
        children: 
        [
          Positioned.fill
          (
            // Background image that we used to cover the welcome screen..
            child: Image.asset
            (
              "assets/sign.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Padding
          (
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column
            (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  // the (Backwards button that is located at the top left of the page)
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
                    // The Verification Text
                  const Text
                  (
                    "Verification Code",
                    style: TextStyle
                    (
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sofia Pro",
                      fontSize: 48
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  const Text
                  (
                    "Please type the verification code sent to",
                    style: TextStyle
                    (
                      color: Color(0xff9796A1),
                      fontSize: 14,
                      fontFamily: "Sofia Pro",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal
                      )
                  ),
                  const Text
                  (
                    "prelookstudio@gmail.com",
                    style: TextStyle
                    (
                      color: Color(0xff9796A1),
                      fontSize: 14,
                      fontFamily: "Sofia Pro",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal
                    )
                  ),
                  const SizedBox(height: 10),
                  Form
                  (
                    child: Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: 
                      [
                        SizedBox
                        (
                          height: 64,
                          width: 68,
                          child: TextFormField
                          (
                            autofocus: true,
                            onSaved: (pin1) {},
                            onChanged: (value) 
                            {
                              if (value.length == 1) 
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration:
                            const InputDecoration(counterText: " "),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          )
                        ),
                        SizedBox
                        (
                          height: 64,
                          width: 68,
                          child: TextFormField
                          (
                            autofocus: true,
                            onSaved: (pin2) {},
                            onChanged: (value) 
                            {
                              if (value.length == 1) 
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration:
                            const InputDecoration(counterText: " "),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          )
                        ),
                        SizedBox
                        (
                          height: 64,
                          width: 68,
                          child: TextFormField
                          (
                            autofocus: true,
                            onSaved: (pin3) {},
                            onChanged: (value) 
                            {
                              if (value.length == 1) 
                              {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 1,
                            decoration:
                            const InputDecoration(counterText: " "),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          )
                        ),
                        SizedBox
                        (
                          height: 64,
                          width: 68,
                          child: TextFormField
                          (
                           autofocus: true,
                           onSaved: (pin4) {},
                           onChanged: (value) 
                           {
                             if (value.length == 1) 
                             {
                               FocusScope.of(context).nextFocus();
                             }
                           },
                           keyboardType: TextInputType.number,
                           maxLength: 1,
                           decoration:
                           const InputDecoration(counterText: " "),
                           textAlign: TextAlign.center,
                           style: Theme.of(context).textTheme.titleLarge,
                          )
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  TextButton
                        (
                          onPressed: () {},
                          child: const Text.rich
                          (
                            textAlign: TextAlign.center,
                            TextSpan
                            (
                              text: "I don't recieve a code ! ",
                              style: TextStyle
                              (
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Sofia Pro"
                              ),
                              children: <TextSpan>
                              [
                                TextSpan
                                (
                                  text: "Please Resend",
                                  style: TextStyle
                                  (
                                    color: Color(0xffFE724C),
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Sofia Pro",
                                    decoration: TextDecoration.underline
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                ]
            )
          )
      ]),
    );
  }
}
