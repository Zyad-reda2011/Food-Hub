import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget 
{
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: 
      Stack
      (
        children: 
        [
          Positioned.fill
          (
            // Background image that we used to cover the welcome screen..
            child: Image.asset
            (
            "assets/brooke-lark-lcZ9NxhOSlo-unsplash1.png",
            fit: BoxFit.cover,
            ),
          ),
          Padding
          (
            padding: const EdgeInsets.symmetric(horizontal: 15.0  , vertical: 15.0),
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: 
              [ 
                // the (Backwards button that is located at the top left of the page)
                Align
                (
                  alignment: Alignment.topLeft,
                  child: TextButton
                  (
                    onPressed: (){}, 
                    child: const Text("<" , style:TextStyle(color: Colors.black, fontSize: 12 , fontFamily: "Sofia Pro" ),) 
                  ),
                ),
                const Text
                (
                  "Verification Code",
                  style: TextStyle(color: Colors.black , fontWeight: FontWeight.normal , fontFamily: "Sofia Pro" , fontSize: 48),
                  textAlign : TextAlign.left,
                ),
                const SizedBox(height : 10),
                const Text
                (
                  "Please type the verification code sent to",
                  style: TextStyle
                  (
                    color: Color(0xff9796A1),
                    fontSize: 14 , 
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
                    fontSize: 14 , 
                    fontFamily: "Sofia Pro",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal
                  )
                ),
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    
                  ],
                ),   
              ]
            )
          )
        ]
      ),
    );
  }
}