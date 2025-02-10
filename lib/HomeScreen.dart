// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, depend_on_referenced_packages, dead_code, unused_label
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scr/FoodScreen.dart';
import 'package:scr/Login.dart';
import 'package:scr/RegistrationPage.dart';
import 'package:scr/ResetPassword.dart';
import 'package:scr/SignUp.dart';
import 'package:scr/Verification_Screen.dart';
import 'package:scr/WelcomeScreen.dart';

void main()
{
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit
    (
      designSize: const Size(360, 690),
      builder: (context, child) 
      {
        return MaterialApp
        (
          debugShowCheckedModeBanner: false,
          home: WelcomeScreen(),
          initialRoute: '/',
          routes: 
          {
            '/signup': (context) => SignUp(),
            '/login' : (context) => Login(),
            '/verification' : (context) => Verification(),
            '/reset' : (context) => Resetpassword(),
            '/regestration' : (context) => Registrationpage(),
            '/Food' : (context) => FoodScreen()
          },
        );
      },
    );
  }
}
