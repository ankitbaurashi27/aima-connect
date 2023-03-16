// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aima_connect/pages/loginContainers/login_logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
       leading: Icon(Icons.arrow_back, color: Colors.white,),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LoginLogo(),
        ],
        ),
      ),
     );
  }
}