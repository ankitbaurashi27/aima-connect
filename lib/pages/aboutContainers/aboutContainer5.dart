// ignore_for_file: prefer_const_constructors

import 'package:aima_connect/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class AboutContainer5 extends StatelessWidget {
  const AboutContainer5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: aboutMobileContainer5(),
      desktop: aboutDesktopContainer5(),
    );
  }

  Widget aboutMobileContainer5() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Office Bearers for 2022-2024',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ScrollWidgetMobile(
                  name: 'Lalit Boob',
                  designation: 'Hon Gen. Secretary',
                  image: "assets/images/Lalit.jpg"),
              SizedBox(
                height: 20,
              ),
              ScrollWidgetMobile(
                  name: 'Rajendra Panasare',
                  designation: 'Vice President',
                  image: "assets/images/rajendra-pansare.png"),
              ScrollWidgetMobile(
                  name: 'Sudarshan Dongare',
                  designation: 'Vice President',
                  image: "assets/images/sudarshan-dongre.jpg"),
              SizedBox(
                height: 20,
              ),
              ScrollWidgetMobile(
                 name: 'Rajendra Kothavade',
                    designation: 'Treasurer',
                    image: "assets/images/Rajendra-Kothawade.jpg"),
              ScrollWidgetMobile(
                  name: 'Dhananjay Bele',
                  designation: 'BOT Chairman',
                  image: "assets/images/Dhananjay-Bele.jpg"),
              SizedBox(
                height: 20,
              ),
              ScrollWidgetMobile(
                   name: 'Varun Talwar',
                  designation: 'IPP',
                  image: "assets/images/varun-talwar.png"),
            ],
          ),
        ),
      ],
    );
    
  }

  Widget aboutDesktopContainer5() {
    return Container(
      height: 750,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Office Bearers for 2022-2024',
              style: TextStyle(
                fontSize: w! / 50,
                fontWeight: FontWeight.bold,
                height: 2.0,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Avtar(
                    name: 'Lalit Boob',
                    designation: 'Hon Gen. Secretary',
                    image: "assets/images/Lalit.jpg"),
                Avtar(
                    name: 'Rajendra Panasare',
                    designation: 'Vice President',
                    image: "assets/images/rajendra-pansare.png"),
                Avtar(
                    name: 'Sudarshan Dongare',
                    designation: 'Vice President',
                    image: "assets/images/sudarshan-dongre.jpg"),
                Avtar(
                    name: 'Rajendra Kothavade',
                    designation: 'Treasurer',
                    image: "assets//images/Rajendra-Kothawade.jpg"),
              ]),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Avtar(
                  name: 'Dhananjay Bele',
                  designation: 'BOT Chairman',
                  image: "assets/images/Dhananjay-Bele.jpg"),
              Avtar(
                  name: 'Varun Talwar',
                  designation: 'IPP',
                  image: "assets/images/varun-talwar.png"),
              Avtar(
                  name: 'Govind Jha',
                  designation: 'Hon. Secretary',
                  image: "assets/images/Govind-Jha.jpg"),
              Avtar(
                  name: 'Yogita Aher',
                  designation: 'Hon. Secretary',
                  image: "assets/images/Yogita-Ahir.jpg"),
            ],
          )
        ],
      ),
    );
  }
}
