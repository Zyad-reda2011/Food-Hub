// ignore_for_file: camel_case_types, use_build_context_synchronously, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:scr/HomeScreen.dart';
import 'package:scr/main.dart';

void main ()
{
  runApp(splashScreen());
}

class splashScreen extends StatefulWidget 
{
  const splashScreen({super.key});
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> 
{
 @override
  void initState() 
  {
    Future.delayed
    (
      Duration(seconds: 4) , () 
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder : (context) => HomeScreen()));
    } 
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) 
  {
    
    return Scaffold
    (
      backgroundColor:Color(0xffFE724C),
      body: Padding
      (  
        padding: const EdgeInsets.all(10.0),
        child: Column
        (
          children: 
        [
          Expanded
          (
            child: Center
            (
              child: Image.asset("assets/Group-18118.png"),
            )
          ),
        ],        
        ),
      ),
    );
  }
}