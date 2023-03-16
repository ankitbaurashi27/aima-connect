// ignore_for_file: sized_box_for_whitespace

import 'package:aima_connect/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:aima_connect/utils/constants.dart';

class AboutContainer4 extends StatelessWidget {
  const AboutContainer4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: aboutMobileContainer4(),desktop: aboutDesktopContainer4(),);
  }

  Widget aboutMobileContainer4(){
    return Container(
      color: Colors.grey.shade200,
      height: 100,
      child: const Center(
        child: 
      Text(
        'Ambad Industries & Manufacturers \n     Association list for 2022-2024.',
            // ignore: prefer_const_constructors
            style:  TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
      )),
    );

  }


  Widget aboutDesktopContainer4(){
    return Container(
        color:  Colors.grey.shade200,
        height: 180,
        child: Center(
          child: Text(
            'Ambad Industries & Manufacturers \n    Association list for 2022-2024.',
            style:  TextStyle(
              fontSize: w! / 40,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
        ),
      );
  }
}
