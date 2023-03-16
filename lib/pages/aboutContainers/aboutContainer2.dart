// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../utils/constants.dart';

class AboutContainer2 extends StatefulWidget {
  const AboutContainer2({Key? key}) : super(key: key);

  @override
  State<AboutContainer2> createState() => _AboutContainer2State();
}

class _AboutContainer2State extends State<AboutContainer2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: aboutMobileContainer2(), desktop: aboutDesktopContainer2());
  }


  Widget aboutMobileContainer2() {
    return Expanded
      (
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    'AIMA Values',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height:200,
                    child: Image.asset(values, fit:BoxFit.cover),
                  ),
                  Text(
                    'We shall remain creditable to all members and government officials.\nWe shall be accountable for protecting our member’s interests.\nWe shall always remain Value based organization.\nWe shall bind ourselves by the principles of Altruism & Voluntarism.\nWe shall not support anti social activities of any member.',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                ],
              ),
            ),
          ]),
    );
  }

   Widget aboutDesktopContainer2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
         
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Values',
                  style: TextStyle(
                    fontSize: w! / 40,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We shall remain creditable to all members and government officials.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                 SizedBox(
                  height: 10,
                ),
                 Text(
                  'We shall be accountable for protecting our member’s interests.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                 SizedBox(
                  height: 10,
                ),
                Text(
                  'We shall always remain Value based organization.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                 SizedBox(
                  height: 10,
                ),
                Text(
                  'We shall bind ourselves by the principles of Altruism & Voluntarism.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
           Expanded(
              child: Container(
            height: 540,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(values), fit: BoxFit.contain),
            ),
          )),
        ],
      ),
    );
  }
}


