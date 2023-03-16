// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../utils/constants.dart';

class AboutContainer1 extends StatefulWidget {
  const AboutContainer1({Key? key}) : super(key: key);

  @override
  State<AboutContainer1> createState() => _AboutContainer1State();
}

class _AboutContainer1State extends State<AboutContainer1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: aboutMobileContainer1(), desktop: aboutDesktopContainer1(),);
  }



  Widget aboutMobileContainer1() {
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
                  'AIMA Vission',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              Text(
                  'We envision AIMA as the Premier association and representative of Industries in Nashik District acting as a motive force,',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
                 Text(
                  'facilitator, synergist, incubator and repository of knowledge for its members to help them to achieve their full potential &',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
                Text(
                  'work to avoid injustice in order to accelerate the development of  Industries in Nashik District at a faster pace.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
          
            ],
          ),
        ),
      ]),
    );
  }

   Widget aboutDesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 540,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(vision), fit: BoxFit.contain),
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AIMA Vission',
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
                  'We envision AIMA as the Premier association and representative of Industries in Nashik District acting as a motive force,',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                 Text(
                  'facilitator, synergist, incubator and repository of knowledge for its members to help them to achieve their full potential &',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                Text(
                  'work to avoid injustice in order to accelerate the development of  Industries in Nashik District at a faster pace.',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                
              ],
            ),
          )),
          

        ],
      ),
    );
  }
}


