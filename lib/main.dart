// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/pages/home.dart';
import 'package:aima_connect/utils/colors.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AIMA - Ambad Industries & Manufactures Association',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
      ),
      //home: Home(),
      home: AnimatedSplashScreen(
        duration: 2500,
        backgroundColor: Colors.white,
        splash: Image.asset(logo),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: Home(),
      ),

    );
  }
}
