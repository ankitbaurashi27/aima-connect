// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/pages/containers/container1.dart';
import 'package:aima_connect/pages/containers/container3.dart';
import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'containers/container4.dart';
import 'containers/container5.dart';
import 'containers/contianer2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Navbar(),
          Container1(),
          Container2(),
          Container3(),
          Container4(),
          Container5(),
          //Footer(),
      ],
      ),
    );
  }
}
