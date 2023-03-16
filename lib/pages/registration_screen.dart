
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aima_connect/pages/registrationContainer/registrationfields.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: Icon(Icons.arrow_back, color: Colors.white,),
      ),
       body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RegistrationFields(),
        ],
        ),
         ),
     );
  }
}