// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/pages/aboutContainers/aboutContainer2.dart';
import 'package:aima_connect/pages/aboutContainers/aboutContainer4.dart';
import 'package:aima_connect/pages/aboutContainers/aboutContainer5.dart';
import 'package:aima_connect/pages/aboutContainers/about_container1.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import 'aboutContainers/aboutContainer3.dart';
import 'aboutContainers/aboutContainer6.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Navbar(),
              AboutContainer1(),
              AboutContainer2(),
              AboutContainer3(),
              AboutContainer4(),
              AboutContainer5(),
              AboutContainer6(),
            ],
          ),
        ),
    );
  }
}
