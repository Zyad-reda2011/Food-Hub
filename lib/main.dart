import 'package:flutter/material.dart';
import 'package:scr/splash.dart';

void main ()
{
  runApp(const MyHome());
}

class MyHome extends StatefulWidget 
{
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> 
{
  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}