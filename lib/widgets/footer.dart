// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:aima_connect/utils/colors.dart';
import 'package:aima_connect/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileFooter(),
      desktop: desktopFooter(),
    );
  }

  Widget mobileFooter() {
    return Container(
      color: Colors.blue,
      height: 20,
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(
        children: [
         Text(
                'Copyright \u00a9 2023 AIMA, All Rights Reserved | Designed & Developed by Ankit Baurashi and Rahul Bhatija.',
                style: TextStyle(fontSize: w! / 45, color: Colors.white),
              ),
      ]),
    );
  }

  Widget desktopFooter() {
    return Container(
      color: AppColors.primary,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Copyright \u00a9 2023 AIMA, All Rights Reserved | Designed & Developed by Ankit Baurashi and Rahul Bhatija.',
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
        )
      ]),
    );
  }
}
